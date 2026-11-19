---
type: "page"
id: "embed-your-agent-in-an-app"
title: "Embed Your Agent in an App"
description: "Call your published Gradient agent from a Python script and a minimal JavaScript application using the OpenAI-compatible endpoint."
weight: 4
---

## Overview

A published Gradient agent exposes an OpenAI-compatible `/api/v1/chat/completions` endpoint. Any application that can make HTTP requests can call it. This lesson shows two concrete integration patterns: a Python backend service, and a browser chat widget backed by a small proxy server that keeps your access key server-side.

## Prerequisites

- A published agent with its endpoint URL and an endpoint access key.
- Environment variables set:

```bash
export DO_AGENT_ID="your-agent-id"
export DO_AGENT_KEY="<your-endpoint-access-key>"
```

## Python Integration

Use the `openai` library and override `base_url` to point to your agent:

```python
import os
from openai import OpenAI

AGENT_BASE_URL = f"https://{os.environ['DO_AGENT_ID']}.agents.do-ai.run/api/v1"

client = OpenAI(
    base_url=AGENT_BASE_URL,
    api_key=os.environ["DO_AGENT_KEY"],
)

def ask_agent(user_message: str, history: list[dict] = None) -> str:
    messages = history or []
    messages.append({"role": "user", "content": user_message})

    response = client.chat.completions.create(
        messages=messages,
        # model field is optional for agent endpoints; the agent's configured model is used
        model="n/a",
    )

    reply = response.choices[0].message.content
    messages.append({"role": "assistant", "content": reply})
    return reply, messages

# Single turn
reply, _ = ask_agent("What topics can you help me with?")
print(reply)

# Multi-turn conversation
reply, history = ask_agent("Tell me about billing.")
reply, history = ask_agent("How do I get an invoice?", history)
print(reply)
```

The `history` list preserves conversation context across turns. Pass it back on each subsequent call to give the agent memory of the exchange.

## Browser Integration (via a backend proxy)

A browser must **never** hold the endpoint access key — anything in page JavaScript is visible to every visitor, so the key would be exposed the moment the page loads. Instead, the browser talks to a small backend you control, and that backend holds the key and forwards the request to the agent.

### Backend proxy

This minimal Express server keeps `DO_AGENT_KEY` server-side and exposes a `/chat` route for the browser to call. It reuses the same environment variables from the Prerequisites above:

```js
// server.js
const express = require("express");
const OpenAI = require("openai");

const app = express();
app.use(express.json());
app.use(express.static("public")); // serve the chat UI

const client = new OpenAI({
  baseURL: `https://${process.env.DO_AGENT_ID}.agents.do-ai.run/api/v1`,
  apiKey: process.env.DO_AGENT_KEY, // stays on the server, never sent to the browser
});

app.post("/chat", async (req, res) => {
  const { messages } = req.body;
  try {
    const completion = await client.chat.completions.create({ model: "n/a", messages });
    res.json({ reply: completion.choices[0].message.content });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.listen(process.env.PORT || 8080);
```

### Browser client

The page calls your own `/chat` route — there is no key and no `Authorization` header anywhere in client-side code:

```js
async function sendMessage(userText, history = []) {
  const messages = [...history, { role: "user", content: userText }];

  const res = await fetch("/chat", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ messages }),
  });

  if (!res.ok) {
    throw new Error(`Chat request failed: ${res.status}`);
  }

  const { reply } = await res.json();
  return { reply, history: [...messages, { role: "assistant", content: reply }] };
}

// Usage
let { reply, history } = await sendMessage("What can you help me with?");
console.log(reply);

({ reply, history } = await sendMessage("How do I upgrade my plan?", history));
console.log(reply);
```

**Important**: the endpoint access key lives only in the backend's environment — never in client-side browser code. The browser authenticates to *your* backend (add session authentication and rate limiting to the `/chat` route), and only the backend authenticates to the agent. For a deployable version of this pattern, see [Front Ends on App Platform](https://cloud.layer5.io/academy/learning-paths/3e2f9c82-1a4c-4781-adf9-99ec22cd994e/building-agentic-ai-with-gradient/deploying-agents-to-production/production/front-ends-on-app-platform/).

## Production Considerations

| Concern | Recommendation |
|---|---|
| Key exposure | Proxy agent calls through your backend; never expose keys to browsers |
| Error handling | Check for `finish_reason: "length"` and retry or warn the user |
| Conversation history size | Trim old messages when history approaches the model's context limit |
| Latency | Display a loading indicator; agent responses may take 1–5 seconds |
| Cost visibility | Log `usage.total_tokens` per call to track spend in your own analytics |

With the agent embedded, you have a full pipeline: a foundation model, managed infrastructure, and a production endpoint callable from any application stack.

Full integration reference: [docs.digitalocean.com/products/gradient-ai-platform/](https://docs.digitalocean.com/products/gradient-ai-platform/).
