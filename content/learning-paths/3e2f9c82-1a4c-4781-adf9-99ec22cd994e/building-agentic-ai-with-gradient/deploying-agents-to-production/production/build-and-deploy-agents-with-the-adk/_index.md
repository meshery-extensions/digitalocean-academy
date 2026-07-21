---
type: "page"
id: "build-and-deploy-agents-with-the-adk"
title: "Build & Deploy Agents with the ADK"
description: "Use the DigitalOcean Agent Development Kit (ADK) to build agents as code, test them locally with hot reload, evaluate them, and deploy to managed serverless hosting with a single command."
weight: 5
---

## Overview

Earlier lessons built agents two ways: the **no-code Control Panel** and the **full-code REST API/SDK**. The **Agent Development Kit (ADK)** is a third path, aimed at teams who want to keep their agent logic in code, under version control, in whatever framework they already use — while letting DigitalOcean handle hosting, observability, and evaluations.

The ADK's premise is simple: **bring your agent code, and the platform handles the rest.** You write a normal Python agent; the ADK gives you a local dev loop, automatic tracing, an evaluation runner, and one-command deployment to managed serverless infrastructure.

{{< alert type="info" title="Public Preview — opt-in required" >}}The ADK is in Public Preview and must be enabled before use: opt in on the **Feature Preview** page in your DigitalOcean account (if you don't see it, ask your team owner to enable it). Commands, flags, packaging, and hosting terms may change during preview — always confirm current status and pricing in the [ADK documentation](https://docs.digitalocean.com/products/gradient-ai-platform/how-to/build-agents-using-adk/).{{< /alert >}}

## When to Use the ADK

| Approach | Best for | Trade-off |
|---|---|---|
| Control Panel (no-code) | Prototyping, non-engineers, quick iteration | Config lives in the UI, not in git |
| REST API / SDK | Infrastructure-as-code, scripted agent creation | You manage the request/response plumbing |
| **Agent Development Kit** | Code-first agents in an existing framework, with built-in tracing, evals, and deploy | Preview-stage tooling |

Reach for the ADK when your agent is real application code — multi-step graphs, custom tools, retrieval logic — and you want that code, not a UI, to be the source of truth.

## Framework Agnostic by Design

The ADK does not impose an agent framework. Bring an agent built with **LangGraph**, **LangChain**, **CrewAI**, **PydanticAI**, or plain Python — no rewrites, no lock-in. The kit wraps your code, captures traces from it, and deploys it. Your choice of model provider is equally open: OpenAI, Anthropic, Google, or DigitalOcean's own Serverless Inference, using your keys.

## Installation

The ADK ships as a Python package and installs a `gradient` CLI:

```bash
pip install gradient-adk
```

## Scaffold a Project

Initialize a new agent project:

```bash
gradient agent init
```

This generates a working project skeleton:

| File / Directory | Purpose |
|---|---|
| `main.py` | Agent entrypoint with example code |
| `agents/` | Your agent implementations |
| `tools/` | Custom tools the agent can call |
| `config.yaml` | Agent configuration |
| `requirements.txt` | Python dependencies |

## The Entrypoint

Every ADK agent exposes a single entrypoint: an `async` function decorated with `@entrypoint` that receives the request `input` and a `RequestContext`, and returns the agent's result. Here is a minimal LangGraph agent — the ADK captures a trace for each node automatically:

```python
import os
from gradient_adk import entrypoint, RequestContext
from langchain_openai import ChatOpenAI
from langgraph.graph import StateGraph
from typing import TypedDict

# `llm` is your own framework object — here, a LangChain chat model pointed
# at DigitalOcean Serverless Inference. Store the key outside your code.
llm = ChatOpenAI(
    base_url="https://inference.do-ai.run/v1",
    api_key=os.environ["DO_INFERENCE_KEY"],
    model="llama3.3-70b-instruct",
)


class State(TypedDict):
    input: str
    output: str


async def llm_call(state: State) -> State:
    # This node execution is automatically traced.
    message = await llm.ainvoke(state["input"])
    state["output"] = message.content
    return state


@entrypoint
async def main(input: dict, context: RequestContext):
    graph = StateGraph(State)
    graph.add_node("llm_call", llm_call)
    graph.set_entry_point("llm_call")

    graph = graph.compile()
    result = await graph.ainvoke({"input": input.get("query")})
    return result["output"]
```

Pointing the model at DigitalOcean Serverless Inference (as above) keeps everything on one platform. It uses the OpenAI-compatible endpoint `https://inference.do-ai.run/v1` with a model slug from your catalog — look them up with `GET /v1/models`. Keep `DO_INFERENCE_KEY` in the environment, never in source.

## Run Locally with Hot Reload

Run the agent on your machine before deploying anything:

```bash
gradient agent run --dev
```

The agent serves at `http://localhost:8080` with hot reload, and traces are captured locally so you can inspect behavior as you iterate. This is the same fast edit-run-observe loop you would expect from any web framework — no cloud round-trip required.

## Tracing and Observability

Observability is built in, not bolted on. LangGraph nodes, HTTP calls to LLM providers, streaming chunks, and errors are traced automatically. For other frameworks, or to trace specific functions, add decorators that classify each span:

```python
from gradient_adk import entrypoint, trace_llm, trace_tool, trace_retriever, RequestContext


@trace_retriever("vector_search")
async def search_knowledge_base(query: str):
    return await vector_db.search(query)


@trace_llm("generate_response")
async def generate_response(prompt: str):
    return await llm.generate(prompt)


@trace_tool("calculate")
async def calculate(x: int, y: int):
    return x + y


@entrypoint
async def main(input: dict, context: RequestContext):
    docs = await search_knowledge_base(input["query"])
    total = await calculate(5, 10)
    return await generate_response(f"Context: {docs}")
```

Each decorator records the right kind of span — retriever, LLM (with token usage), or tool — so traces read as a meaningful timeline rather than opaque function calls. Open the traces UI with `gradient agent traces`. (As above, `llm`, `vector_db`, and `search_knowledge_base` stand in for your own framework objects.)

{{< alert type="warning" title="Traces can contain sensitive data" >}}Captured traces include LLM request and response payloads, streaming chunks, and full exception details — so they may hold user input, retrieved documents, or PII. Do not log secrets or sensitive personal data into agent inputs or outputs you expect to trace, and review the platform's trace access and retention controls before enabling tracing on production workloads.{{< /alert >}}

## Evaluate Before You Ship

The ADK reuses the same **Agent Evaluations** system introduced in the *Guardrails & Evaluations* course: a CSV dataset of test prompts scored against built-in metrics. Run a suite against your agent from the CLI:

```bash
gradient agent evaluate \
  --test-case-name "release-check" \
  --dataset-file evaluation_dataset.csv \
  --categories correctness,safety_and_security \
  --success-threshold 80.0
```

Running `gradient agent evaluate` with no flags starts an interactive flow that walks you through the same options. Wire this into CI so no agent change ships without passing your quality bar — the code-first equivalent of the promotion checklist from the *Versioning & Agent Insights* lesson.

## Deploy in One Step

When local runs and evaluations look good, deploy to DigitalOcean's managed infrastructure. Set your Personal Access Token once, then deploy:

```bash
export DIGITALOCEAN_API_TOKEN=<your-personal-access-token>
gradient agent deploy
```

There are no servers to provision and no containers to build by hand — the ADK packages the agent and hosts it serverlessly. After deploying, stream runtime logs with `gradient agent logs` and open the traces UI with `gradient agent traces`.

## CLI Reference

| Command | What it does |
|---|---|
| `gradient agent init` | Scaffold a new agent project |
| `gradient agent configure` | Configure an existing project |
| `gradient agent run --dev` | Run locally with hot reload at `http://localhost:8080` |
| `gradient agent evaluate` | Run an evaluation suite (interactive or flag-driven) |
| `gradient agent deploy` | Deploy to managed serverless hosting |
| `gradient agent logs` | Stream runtime logs |
| `gradient agent traces` | Open the traces UI |

## Where the ADK Fits

The ADK closes the loop this path has been building toward: you design an agent, ground it with knowledge bases, extend it with tools, guard and evaluate it — and with the ADK you do all of that as versioned code and ship it with a single command. Control Panel agents and ADK agents are complementary, not exclusive: prototype in the UI to find the shape of the agent, then move the logic into code once it needs tests, review, and a deployment pipeline.

Full command reference and templates: [Build, Test, and Deploy Agents Using the Agent Development Kit](https://docs.digitalocean.com/products/gradient-ai-platform/how-to/build-agents-using-adk/).
