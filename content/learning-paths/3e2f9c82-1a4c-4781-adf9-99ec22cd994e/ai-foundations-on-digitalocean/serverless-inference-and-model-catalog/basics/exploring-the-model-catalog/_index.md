---
type: "page"
id: "exploring-the-model-catalog"
title: "Exploring the Model Catalog"
description: "Browse DigitalOcean's model catalog, understand model families and capabilities, and create a model access key."
weight: 2
---

## Overview

The **Model Catalog** is the menu of AI models available through DigitalOcean's Inference Engine. It includes open-source models alongside frontier models from OpenAI and Anthropic, plus embedding, image-generation, and text-to-speech models. You do not need to download, host, or manage any of these models — selecting one by name in your API request is all it takes.

## Model Families

The catalog is organized by model family and provider:

| Provider | Model Families | Best For |
|---|---|---|
| Meta | Llama 3.3, Llama 4 | General purpose, reasoning, coding |
| OpenAI | GPT series, GPT-OSS (open-weight) | Frontier reasoning and multimodal; GPT-OSS for low-cost open-weight tasks |
| Anthropic | Claude (Sonnet, Opus, Haiku) | Frontier reasoning, long context, code |
| DeepSeek | DeepSeek V-series | Reasoning, cost-efficient generation |
| Alibaba (Qwen) | Qwen 3.x | Multilingual, math, coding |
| Mistral AI | Mistral | Fast inference, multilingual, instruction-following |

The catalog evolves quickly — new models are added and older ones retired regularly, so always confirm the current list with the `/v1/models` endpoint shown below. Within each family, models come in multiple sizes. Larger models produce higher-quality outputs but cost more per token and have higher latency. Smaller models are faster and cheaper and are often sufficient for classification, summarization, and simple Q&A.

## How to Browse the Catalog

In the Control Panel:

1. Navigate to **AI → Inference → Model Catalog**.
2. Filter by provider, modality (text, code, vision), or context length.
3. Click a model card to see the model ID string you will use in API calls, the supported context window, and pricing per million tokens.

The model ID string (e.g., `llama3.3-70b-instruct`) is what you pass as the `model` parameter in your API requests.

## Creating a Model Access Key

Model access keys authenticate your Inference requests. To create one:

1. In the Control Panel, go to **AI → Inference → API Keys**.
2. Click **Generate New Key**.
3. Give the key a descriptive name (e.g., `my-app-dev`).
4. Copy the key immediately — it is shown only once.

Store the key as an environment variable:

```bash
export DO_INFERENCE_KEY="<your-model-access-key>"
```

Verify it works with a quick list-models call:

```bash
curl -s https://inference.do-ai.run/v1/models \
  -H "Authorization: Bearer $DO_INFERENCE_KEY" | jq '.data[].id'
```

This returns the full list of model IDs available under your account, which you can use to confirm catalog access before writing application code.

## Choosing a Model for Your Use Case

| Task | Recommended Starting Point |
|---|---|
| General chat / Q&A | `llama3.3-70b-instruct` |
| Fast, low-cost classification | `openai-gpt-oss-20b` |
| Complex reasoning / coding | `deepseek-v4-pro` or a frontier model |
| Long-document summarization | Model with 128K+ context window |
| Frontier quality required | Claude (`anthropic-claude-*`) or GPT (`openai-gpt-*`) models |

Start with a smaller model and upgrade only if output quality is insufficient. The OpenAI-compatible interface means swapping models is a one-line change in your code.

Browse the current model catalog in the Control Panel, or read the [Gradient AI Platform documentation](https://docs.digitalocean.com/products/gradient-ai-platform/) for the full list of serverless inference models.
