---
title: "DigitalOcean Certified AI Engineer (DO-CAIE) Exam"
pass_percentage: 70
# 180-question pool. The test engine draws one 60-question set per attempt
# (number_of_questions: 60 -> 3 sets; maxAttempts auto-defaults to the set
# count, 3), so a learner does not see a repeated question until a 4th attempt.
# The bank size must be an exact multiple of number_of_questions (180 = 3 x 60).
# Each set of 60 is an independently representative exam covering all seven
# domains per the blueprint, with equal marks per set (43 single-answer +
# 17 multiple-answer = 137 marks).
number_of_questions: 60
type: "test"
questions:

  # =====================================================================
  # SET A (q1-q60) - one full representative exam across all 7 domains
  # =====================================================================
  # --- Domain 1 - AI-Native Cloud fundamentals & service selection (12%) ---
  - id: "q1"
    text: "The DigitalOcean AI-Native Cloud is described as spanning five layers. Which of the following are among them? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Infrastructure"
        is_correct: true
      - id: "b"
        text: "Inference"
        is_correct: true
      - id: "c"
        text: "Managed agents"
        is_correct: true
      - id: "d"
        text: "On-premises mainframe"
    correct_answer: "a,b,c"

  - id: "q2"
    text: "Which layers make up the AI-Native Cloud alongside infrastructure and inference? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Core cloud"
        is_correct: true
      - id: "b"
        text: "Data"
        is_correct: true
      - id: "c"
        text: "Managed agents"
        is_correct: true
      - id: "d"
        text: "Third-party billing broker"
    correct_answer: "a,b,c"

  - id: "q3"
    text: "A low-volume feature needs occasional model calls with no idle cost and minimal ops. Which service is the best fit?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A dedicated 8x H100 GPU Droplet"
      - id: "b"
        text: "Serverless inference"
        is_correct: true
      - id: "c"
        text: "Bare Metal GPUs"
      - id: "d"
        text: "A self-managed Kubernetes cluster on Droplets"
    correct_answer: "b"

  - id: "q4"
    text: "How does serverless inference bill compared with a GPU Droplet?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Serverless is billed per token; a GPU Droplet is billed per GPU-hour while it exists"
        is_correct: true
      - id: "b"
        text: "Both are billed per GPU-hour"
      - id: "c"
        text: "Serverless is billed per GPU-hour; a GPU Droplet is billed per token"
      - id: "d"
        text: "Both are free below a monthly quota"
    correct_answer: "a"

  - id: "q5"
    text: "Which DigitalOcean managed offering is purpose-built for creating and hosting agents rather than raw model serving?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The Gradient AI Platform"
        is_correct: true
      - id: "b"
        text: "GPU Droplets"
      - id: "c"
        text: "Spaces"
      - id: "d"
        text: "Cloud Firewalls"
    correct_answer: "a"

  - id: "q6"
    text: "Which command-line tool is DigitalOcean's official CLI for managing account resources such as Droplets and DOKS clusters?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "doctl"
        is_correct: true
      - id: "b"
        text: "kubectl-do"
      - id: "c"
        text: "docloud"
      - id: "d"
        text: "oceanctl"
    correct_answer: "a"

  - id: "q7"
    text: "You need a workload that runs continuously with predictable, sustained GPU utilization. Which choice best matches that profile on cost grounds?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A GPU Droplet billed per GPU-hour"
        is_correct: true
      - id: "b"
        text: "Serverless inference billed per token"
      - id: "c"
        text: "A one-off web crawl"
      - id: "d"
        text: "A short-answer quiz engine"
    correct_answer: "a"

  - id: "q8"
    text: "What is the primary purpose of organizing DigitalOcean resources into projects?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "To group and organize related resources for a workload or team"
        is_correct: true
      - id: "b"
        text: "To increase the GPU clock speed"
      - id: "c"
        text: "To disable per-token billing"
      - id: "d"
        text: "To bypass regional availability"
    correct_answer: "a"

  # --- Domain 2 - Foundation models, serverless inference & the model catalog (14%) ---
  - id: "q9"
    text: "What is the minimum change to call a DigitalOcean catalog model from code already written for the OpenAI SDK?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Set base_url to the DigitalOcean inference endpoint and api_key to a model access key"
        is_correct: true
      - id: "b"
        text: "Rewrite the client to use gRPC"
      - id: "c"
        text: "Switch the transport to WebSockets"
      - id: "d"
        text: "Re-encode all payloads as XML"
    correct_answer: "a"

  - id: "q10"
    text: "Which base URL do you point the OpenAI SDK at to use DigitalOcean serverless inference?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "https://inference.do-ai.run/v1"
        is_correct: true
      - id: "b"
        text: "https://api.openai.com/v1"
      - id: "c"
        text: "https://gradient.digitalocean.com/api"
      - id: "d"
        text: "https://models.do.co/serve"
    correct_answer: "a"

  - id: "q11"
    text: "Roughly how many models does the DigitalOcean model catalog offer, per the academy materials?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "70+ open models plus frontier models"
        is_correct: true
      - id: "b"
        text: "Exactly 3 models"
      - id: "c"
        text: "Only a single proprietary model"
      - id: "d"
        text: "Over 10,000 models"
    correct_answer: "a"

  - id: "q12"
    text: "Which credential authenticates a request to serverless inference against the model catalog?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A model access key"
        is_correct: true
      - id: "b"
        text: "An SSH key pair"
      - id: "c"
        text: "A Spaces access key"
      - id: "d"
        text: "A database connection string"
    correct_answer: "a"

  - id: "q13"
    text: "Which parameters can you tune on a chat completion to control the output? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "temperature"
        is_correct: true
      - id: "b"
        text: "top_p"
        is_correct: true
      - id: "c"
        text: "max_tokens"
        is_correct: true
      - id: "d"
        text: "nvidia.com/gpu"
    correct_answer: "a,b,c"

  - id: "q14"
    text: "Which are effective ways to cap spend per request against a catalog model? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Set max_tokens to bound the response length"
        is_correct: true
      - id: "b"
        text: "Prefer a smaller catalog model when quality allows"
        is_correct: true
      - id: "c"
        text: "Measure the tokens used per response"
        is_correct: true
      - id: "d"
        text: "Set temperature to 2.0 on every call"
    correct_answer: "a,b,c"

  - id: "q15"
    text: "Which API compatibilities does DigitalOcean serverless inference expose to simplify migration? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "OpenAI-compatible"
        is_correct: true
      - id: "b"
        text: "Anthropic-compatible"
        is_correct: true
      - id: "c"
        text: "SOAP/WSDL-compatible"
      - id: "d"
        text: "A DigitalOcean-only proprietary protocol"
    correct_answer: "a,b"

  - id: "q16"
    text: "What does enabling streaming on a chat completion change about the response?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Tokens are returned incrementally as they are generated instead of all at once"
        is_correct: true
      - id: "b"
        text: "It fine-tunes the base model on the prompt"
      - id: "c"
        text: "It disables token billing"
      - id: "d"
        text: "It forces the model onto a GPU Droplet"
    correct_answer: "a"

  - id: "q17"
    text: "You can practice the same chat completion three ways in the AI Foundations path. Which three interfaces are used?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "curl, the Python openai SDK, and TypeScript"
        is_correct: true
      - id: "b"
        text: "SSH, SFTP, and rsync"
      - id: "c"
        text: "kubectl, helm, and mesheryctl"
      - id: "d"
        text: "SOAP, gRPC, and GraphQL"
    correct_answer: "a"

  # --- Domain 3 - Building agents with the Gradient AI Platform (18%) ---
  - id: "q18"
    text: "Which agent capability lets an agent take an action by calling external code or an API?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A knowledge base"
      - id: "b"
        text: "A function route"
        is_correct: true
      - id: "c"
        text: "A higher temperature"
      - id: "d"
        text: "A larger context window"
    correct_answer: "b"

  - id: "q19"
    text: "Which are real Gradient AI Platform features for safe, measurable, production agents? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Guardrails (content moderation, sensitive-data and jailbreak protection)"
        is_correct: true
      - id: "b"
        text: "Evaluations with LLM-as-a-judge"
        is_correct: true
      - id: "c"
        text: "Agent versioning and insights"
        is_correct: true
      - id: "d"
        text: "Automatic deletion of all logs after each request"
    correct_answer: "a,b,c"

  - id: "q20"
    text: "The Gradient AI Platform was previously known by what name?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "GenAI Platform"
        is_correct: true
      - id: "b"
        text: "Droplet AI"
      - id: "c"
        text: "OceanML"
      - id: "d"
        text: "Spaces AI"
    correct_answer: "a"

  - id: "q21"
    text: "What must you configure when creating a Gradient agent? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Instructions"
        is_correct: true
      - id: "b"
        text: "A base model"
        is_correct: true
      - id: "c"
        text: "Sampling parameters such as temperature and max tokens"
        is_correct: true
      - id: "d"
        text: "A GPU driver version"
    correct_answer: "a,b,c"

  - id: "q22"
    text: "Which two ways of building a Gradient agent does the platform support?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "No-code in the Control Panel and full-code via the API/SDK"
        is_correct: true
      - id: "b"
        text: "Only by editing raw GPU firmware"
      - id: "c"
        text: "Only through a Meshery Design"
      - id: "d"
        text: "Only by uploading a Jupyter notebook"
    correct_answer: "a"

  - id: "q23"
    text: "A support bot must look up live order status from an internal API. What should you add?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A function route to a Function that queries the orders API, with a typed input/output schema"
        is_correct: true
      - id: "b"
        text: "A larger knowledge base of past orders"
      - id: "c"
        text: "A higher temperature"
      - id: "d"
        text: "A second base model"
    correct_answer: "a"

  - id: "q24"
    text: "In a multi-agent routing design, what is the job of the router agent?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Classify intent and delegate to a specialized sub-agent"
        is_correct: true
      - id: "b"
        text: "Physically provision GPUs for each sub-agent"
      - id: "c"
        text: "Store embeddings for retrieval"
      - id: "d"
        text: "Replace the need for any base model"
    correct_answer: "a"

  - id: "q25"
    text: "After iterating on an agent in the playground, what do you do to make it callable by applications?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Publish an endpoint and use an agent access key"
        is_correct: true
      - id: "b"
        text: "Delete the base model"
      - id: "c"
        text: "Disable all guardrails"
      - id: "d"
        text: "Convert it to a short-answer quiz"
    correct_answer: "a"

  - id: "q26"
    text: "Which platform feature lets you ship agent changes safely by comparing behavior before and after a change?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Agent versioning"
        is_correct: true
      - id: "b"
        text: "Raising max_tokens"
      - id: "c"
        text: "A larger GPU Droplet"
      - id: "d"
        text: "A Cloud Firewall rule"
    correct_answer: "a"

  - id: "q27"
    text: "What is the difference between giving an agent a knowledge base versus a function route?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A knowledge base supplies retrieved knowledge; a function route lets the agent take an action via a tool"
        is_correct: true
      - id: "b"
        text: "They are identical features with different names"
      - id: "c"
        text: "A knowledge base calls external APIs; a function route stores documents"
      - id: "d"
        text: "Both retrain the base model weights"
    correct_answer: "a"

  - id: "q28"
    text: "Which sampling parameters can you tune on a Gradient agent's base model? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "temperature"
        is_correct: true
      - id: "b"
        text: "max tokens"
        is_correct: true
      - id: "c"
        text: "top_p"
        is_correct: true
      - id: "d"
        text: "The Kubernetes node selector"
    correct_answer: "a,b,c"

  # --- Domain 4 - Knowledge Bases & RAG (14%) ---
  - id: "q29"
    text: "In a knowledge base, what must happen after the source documents change so retrieval reflects the new content?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The knowledge base must be re-indexed (re-embedded)"
        is_correct: true
      - id: "b"
        text: "The base model weights must be retrained"
      - id: "c"
        text: "The agent temperature must be raised"
      - id: "d"
        text: "The GPU Droplet must be destroyed"
    correct_answer: "a"

  - id: "q30"
    text: "Which steps are part of the RAG pipeline a knowledge base performs? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Chunking"
        is_correct: true
      - id: "b"
        text: "Embedding"
        is_correct: true
      - id: "c"
        text: "Retrieval / vector search"
        is_correct: true
      - id: "d"
        text: "Retraining the base model weights per query"
    correct_answer: "a,b,c"

  - id: "q31"
    text: "Which of the following are valid knowledge base data sources on the Gradient AI Platform? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Uploaded files"
        is_correct: true
      - id: "b"
        text: "Spaces folders"
        is_correct: true
      - id: "c"
        text: "Web crawling of public pages"
        is_correct: true
      - id: "d"
        text: "Connectors such as AWS S3, Dropbox, and Google Drive"
        is_correct: true
    correct_answer: "a,b,c,d"

  - id: "q32"
    text: "What does a knowledge base provide to a Gradient agent?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Retrieval-augmented grounding on private data, with citations"
        is_correct: true
      - id: "b"
        text: "The ability to call external APIs as tools"
      - id: "c"
        text: "A larger GPU for the base model"
      - id: "d"
        text: "Automatic fine-tuning of the base model's weights"
    correct_answer: "a"

  - id: "q33"
    text: "A user asks the agent something not in the knowledge base. With good grounding instructions, what is the desired behavior?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "State that it does not know and suggest where to look, rather than hallucinate"
        is_correct: true
      - id: "b"
        text: "Invent a plausible-sounding answer"
      - id: "c"
        text: "Silently return an empty response"
      - id: "d"
        text: "Switch to a different base model automatically"
    correct_answer: "a"

  - id: "q34"
    text: "Which changes most directly improve retrieval quality when relevant content is being missed? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Tuning chunk size and overlap"
        is_correct: true
      - id: "b"
        text: "Choosing a more appropriate embedding model"
        is_correct: true
      - id: "c"
        text: "Raising max_tokens"
      - id: "d"
        text: "Removing all data sources"
    correct_answer: "a,b"

  - id: "q35"
    text: "Why are knowledge base citations valuable?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "They make answers auditable and traceable back to their sources"
        is_correct: true
      - id: "b"
        text: "They increase the GPU clock speed"
      - id: "c"
        text: "They disable token billing"
      - id: "d"
        text: "They replace the need for an embedding model"
    correct_answer: "a"

  - id: "q36"
    text: "Which parameter affects generation quality but NOT retrieval quality in a RAG setup?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "temperature"
        is_correct: true
      - id: "b"
        text: "chunk overlap"
      - id: "c"
        text: "the embedding model"
      - id: "d"
        text: "chunk size"
    correct_answer: "a"

  # --- Domain 5 - GPU compute, 1-Click Models & model serving (14%) ---
  - id: "q37"
    text: "1-Click Models on DigitalOcean are powered by which partner and require essentially zero serving configuration?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Hugging Face"
        is_correct: true
      - id: "b"
        text: "Microsoft Excel"
      - id: "c"
        text: "Oracle Forms"
      - id: "d"
        text: "A proprietary DigitalOcean-only model format"
    correct_answer: "a"

  - id: "q38"
    text: "Which are valid GPU options for DigitalOcean GPU Droplets? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "NVIDIA H100"
        is_correct: true
      - id: "b"
        text: "AMD MI300X"
        is_correct: true
      - id: "c"
        text: "NVIDIA L40S"
        is_correct: true
      - id: "d"
        text: "Google TPU v5"
    correct_answer: "a,b,c"

  - id: "q39"
    text: "What is the purpose of running nvidia-smi on a GPU Droplet?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "To verify the GPU, driver, and CUDA version are visible and to report utilization"
        is_correct: true
      - id: "b"
        text: "To install the NVIDIA driver"
      - id: "c"
        text: "To deploy a model from Hugging Face"
      - id: "d"
        text: "To create a Cloud Firewall rule"
    correct_answer: "a"

  - id: "q40"
    text: "Why should you destroy a GPU Droplet when you finish a lab?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "GPU Droplets bill per hour while they exist, so destroying them stops charges"
        is_correct: true
      - id: "b"
        text: "The model is automatically deleted after one hour"
      - id: "c"
        text: "nvidia-smi stops working after 24 hours"
      - id: "d"
        text: "There is no cost reason; it is purely optional cleanup"
    correct_answer: "a"

  - id: "q41"
    text: "Why are AI/ML-ready GPU Droplet images recommended for serving models?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "They ship with NVIDIA/AMD drivers and CUDA/ROCm preinstalled, so the GPU works out of the box"
        is_correct: true
      - id: "b"
        text: "They include a paid license for every Hugging Face model"
      - id: "c"
        text: "They disable billing while in use"
      - id: "d"
        text: "They are the only images that can run Python"
    correct_answer: "a"

  - id: "q42"
    text: "Which open-source serving stacks expose an OpenAI-compatible API for self-hosted models? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "vLLM"
        is_correct: true
      - id: "b"
        text: "Hugging Face TGI"
        is_correct: true
      - id: "c"
        text: "Ollama"
        is_correct: true
      - id: "d"
        text: "Microsoft Word"
    correct_answer: "a,b,c"

  - id: "q43"
    text: "Which command serves a model with vLLM's OpenAI-compatible API server on port 8000?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "python -m vllm.entrypoints.openai.api_server --model <model> --host 0.0.0.0 --port 8000"
        is_correct: true
      - id: "b"
        text: "vllm download --model <model>"
      - id: "c"
        text: "doctl compute droplet serve <model>"
      - id: "d"
        text: "nvidia-smi --serve <model>"
    correct_answer: "a"

  - id: "q44"
    text: "On DOKS, which field schedules a pod onto a GPU from a GPU node pool?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "resources.limits: nvidia.com/gpu: 1"
        is_correct: true
      - id: "b"
        text: "spec.useGPU: true"
      - id: "c"
        text: "metadata.gpu: enabled"
      - id: "d"
        text: "status.gpu: ready"
    correct_answer: "a"

  # --- Domain 6 - Cloud native AI operations with Meshery & DOKS (16%) ---
  - id: "q45"
    text: "Which Meshery component discovers and syncs cluster state in real time?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "MeshSync"
        is_correct: true
      - id: "b"
        text: "Kanvas"
      - id: "c"
        text: "fortio"
      - id: "d"
        text: "The Inference Router"
    correct_answer: "a"

  - id: "q46"
    text: "What is Meshery, in the context of operating AI infrastructure?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "An open-source cloud native manager for designing and operating Kubernetes infrastructure across clusters"
        is_correct: true
      - id: "b"
        text: "A managed LLM hosting service from DigitalOcean"
      - id: "c"
        text: "A Python package for fine-tuning models"
      - id: "d"
        text: "A replacement for kubectl that removes the need for Kubernetes"
    correct_answer: "a"

  - id: "q47"
    text: "You captured a vLLM serving stack as a Meshery Design and want to catch a missing GPU limit before deploying. Which capability helps?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Relationship and policy validation"
        is_correct: true
      - id: "b"
        text: "Increasing replicas"
      - id: "c"
        text: "Raising the model temperature"
      - id: "d"
        text: "Deleting MeshSync"
    correct_answer: "a"

  - id: "q48"
    text: "Which Meshery capability measures latency and throughput of an inference endpoint and can compare runs over time?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Performance Profiles"
        is_correct: true
      - id: "b"
        text: "Knowledge bases"
      - id: "c"
        text: "Guardrails"
      - id: "d"
        text: "Model access keys"
    correct_answer: "a"

  - id: "q49"
    text: "Which load generators can a Meshery Performance Profile use? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "fortio"
        is_correct: true
      - id: "b"
        text: "wrk2"
        is_correct: true
      - id: "c"
        text: "nighthawk"
        is_correct: true
      - id: "d"
        text: "nvidia-smi"
    correct_answer: "a,b,c"

  - id: "q50"
    text: "Which exporter exposes GPU utilization and memory metrics to Prometheus for Meshery/Grafana dashboards?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The NVIDIA DCGM exporter"
        is_correct: true
      - id: "b"
        text: "node-exporter only"
      - id: "c"
        text: "kube-proxy"
      - id: "d"
        text: "The vLLM tokenizer"
    correct_answer: "a"

  - id: "q51"
    text: "Which mesheryctl command imports a Kubernetes manifest as a Meshery design?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "mesheryctl design import -f <file> -s \"Kubernetes Manifest\""
        is_correct: true
      - id: "b"
        text: "mesheryctl gpu install <file>"
      - id: "c"
        text: "mesheryctl model serve <file>"
      - id: "d"
        text: "mesheryctl perf destroy <file>"
    correct_answer: "a"

  - id: "q52"
    text: "Which capabilities does Meshery provide for operating AI workloads on DOKS? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Visualizing GPU node pools and workloads in Kanvas"
        is_correct: true
      - id: "b"
        text: "Capturing serving stacks as reusable Designs"
        is_correct: true
      - id: "c"
        text: "Performance testing inference endpoints"
        is_correct: true
      - id: "d"
        text: "Physically installing GPUs into data center racks"
    correct_answer: "a,b,c"

  - id: "q53"
    text: "Where do you save a validated Meshery Design so it can be reused as a curated template?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The Meshery Catalog"
        is_correct: true
      - id: "b"
        text: "The nvidia-smi cache"
      - id: "c"
        text: "The GPU Droplet boot disk"
      - id: "d"
        text: "The OpenAI model catalog"
    correct_answer: "a"

  # --- Domain 7 - Production engineering: routing, security, observability & responsible AI (12%) ---
  - id: "q54"
    text: "The Inference Engine unifies which three inference modes under one OpenAI/Anthropic-compatible endpoint? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Serverless"
        is_correct: true
      - id: "b"
        text: "Batch"
        is_correct: true
      - id: "c"
        text: "Dedicated"
        is_correct: true
      - id: "d"
        text: "Telegraph"
    correct_answer: "a,b,c"

  - id: "q55"
    text: "You must cap cost while keeping p95 latency acceptable, choosing a cheaper model when quality allows. Which control fits best?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The Inference Router with a cost/latency policy and fallbacks"
        is_correct: true
      - id: "b"
        text: "Hardcoding the most expensive model everywhere"
      - id: "c"
        text: "Disabling guardrails"
      - id: "d"
        text: "Setting temperature to 2.0"
    correct_answer: "a"

  - id: "q56"
    text: "Which DigitalOcean managed database extension enables vector similarity search for RAG?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "pgvector on Managed PostgreSQL"
        is_correct: true
      - id: "b"
        text: "nvidia.com/gpu"
      - id: "c"
        text: "do-block-storage"
      - id: "d"
        text: "MeshSync"
    correct_answer: "a"

  - id: "q57"
    text: "Which practices belong to securing AI services on DigitalOcean? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Use VPCs and Cloud Firewalls for private networking"
        is_correct: true
      - id: "b"
        text: "Use least-privilege model/agent access keys and rotate them"
        is_correct: true
      - id: "c"
        text: "Apply guardrails for PII and unsafe content"
        is_correct: true
      - id: "d"
        text: "Commit access keys directly to a public Git repository"
    correct_answer: "a,b,c"

  - id: "q58"
    text: "In CI/CD for AI, what is the role of Evaluations?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A quality gate that can fail the build on regressions in quality/latency/cost/safety"
        is_correct: true
      - id: "b"
        text: "To physically provision GPUs"
      - id: "c"
        text: "To replace version control"
      - id: "d"
        text: "To encrypt the container registry"
    correct_answer: "a"

  - id: "q59"
    text: "Which DigitalOcean service provides S3-compatible object storage for datasets, embeddings, and model artifacts?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Spaces"
        is_correct: true
      - id: "b"
        text: "Cloud Firewalls"
      - id: "c"
        text: "MeshSync"
      - id: "d"
        text: "The agent playground"
    correct_answer: "a"

  - id: "q60"
    text: "Which responsible-AI practices does the production path emphasize?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Transparency, auditability, and human oversight"
        is_correct: true
      - id: "b"
        text: "Maximizing temperature for creativity"
      - id: "c"
        text: "Removing all logging to save storage"
      - id: "d"
        text: "Hardcoding a single model with no evaluation"
    correct_answer: "a"

  # =====================================================================
  # SET B (q61-q120) - one full representative exam across all 7 domains
  # =====================================================================
  # --- Domain 1 - AI-Native Cloud fundamentals & service selection (12%) ---
  - id: "q61"
    text: "Which statement best distinguishes the Gradient AI Platform from GPU Droplets?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The Gradient AI Platform is a managed service for agents and inference; GPU Droplets are raw GPU compute you manage yourself"
        is_correct: true
      - id: "b"
        text: "They are the same product under two names"
      - id: "c"
        text: "GPU Droplets host agents; the Gradient AI Platform sells block storage"
      - id: "d"
        text: "The Gradient AI Platform only runs on-premises"
    correct_answer: "a"

  - id: "q62"
    text: "Which developer tools are part of the DigitalOcean AI tooling tour? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "doctl (CLI)"
        is_correct: true
      - id: "b"
        text: "The pydo / godo SDKs"
        is_correct: true
      - id: "c"
        text: "The DigitalOcean MCP server"
        is_correct: true
      - id: "d"
        text: "The nvidia-smi billing dashboard"
    correct_answer: "a,b,c"

  - id: "q63"
    text: "A team wants the least operational overhead for an intermittent summarization feature. Which service fits best?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Serverless inference"
        is_correct: true
      - id: "b"
        text: "A dedicated 8x H100 GPU Droplet"
      - id: "c"
        text: "A self-hosted vLLM server on DOKS"
      - id: "d"
        text: "Bare Metal GPUs"
    correct_answer: "a"

  - id: "q64"
    text: "When choosing a region for an AI workload, what is a primary reason the choice matters?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Latency to end users and data-residency considerations"
        is_correct: true
      - id: "b"
        text: "It changes the model's temperature"
      - id: "c"
        text: "It determines the Kubernetes version automatically"
      - id: "d"
        text: "It disables per-token billing"
    correct_answer: "a"

  - id: "q65"
    text: "Which SDK pairing correctly matches DigitalOcean's language SDKs?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "pydo for Python and godo for Go"
        is_correct: true
      - id: "b"
        text: "pydo for Go and godo for Python"
      - id: "c"
        text: "pydo for Rust and godo for Java"
      - id: "d"
        text: "Both are Ruby-only SDKs"
    correct_answer: "a"

  - id: "q66"
    text: "For which workloads is a GPU Droplet (per-GPU-hour) a better fit than serverless inference? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Sustained, high-utilization inference you run continuously"
        is_correct: true
      - id: "b"
        text: "Fine-tuning or training that needs a dedicated GPU"
        is_correct: true
      - id: "c"
        text: "Self-hosting a specific open model with full control of the serving stack"
        is_correct: true
      - id: "d"
        text: "A rarely used, bursty feature with long idle gaps"
    correct_answer: "a,b,c"

  - id: "q67"
    text: "What does the DigitalOcean MCP server let AI tooling do?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Interact with DigitalOcean resources through the Model Context Protocol"
        is_correct: true
      - id: "b"
        text: "Physically cool the GPUs"
      - id: "c"
        text: "Replace kubectl entirely"
      - id: "d"
        text: "Fine-tune models for free"
    correct_answer: "a"

  # --- Domain 2 - Foundation models, serverless inference & the model catalog (14%) ---
  - id: "q68"
    text: "What path do vLLM and TGI expose for OpenAI-compatible chat completions?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "/v1/chat/completions"
        is_correct: true
      - id: "b"
        text: "/api/generate/v2"
      - id: "c"
        text: "/models/serve"
      - id: "d"
        text: "/gpu/infer"
    correct_answer: "a"

  - id: "q69"
    text: "Which statement about the model catalog is correct?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "It includes 70+ open models plus frontier models from providers such as OpenAI and Anthropic"
        is_correct: true
      - id: "b"
        text: "It contains only a single fine-tuned model"
      - id: "c"
        text: "It is limited to image-generation models"
      - id: "d"
        text: "Models can only be called over SSH"
    correct_answer: "a"

  - id: "q70"
    text: "You need to reuse existing OpenAI-SDK code with a DigitalOcean catalog model. What is the minimum change?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Point base_url at https://inference.do-ai.run/v1 and set api_key to a model access key"
        is_correct: true
      - id: "b"
        text: "Switch every request to Protocol Buffers"
      - id: "c"
        text: "Rewrite the client for a DigitalOcean-only protocol"
      - id: "d"
        text: "Convert all traffic to gRPC"
    correct_answer: "a"

  - id: "q71"
    text: "Which are sound reasons to prefer serverless inference over self-hosting a model? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "No infrastructure to manage"
        is_correct: true
      - id: "b"
        text: "Pay-per-token cost with no idle charge"
        is_correct: true
      - id: "c"
        text: "Fast to start for low-volume or bursty features"
        is_correct: true
      - id: "d"
        text: "You need to modify the model's serving stack at the kernel level"
    correct_answer: "a,b,c"

  - id: "q72"
    text: "What does setting max_tokens on a chat completion control?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The maximum length of the generated response"
        is_correct: true
      - id: "b"
        text: "The temperature of the model"
      - id: "c"
        text: "The number of GPUs allocated"
      - id: "d"
        text: "The embedding dimension"
    correct_answer: "a"

  - id: "q73"
    text: "Which parameter, alongside temperature, controls sampling by restricting the probability mass considered?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "top_p"
        is_correct: true
      - id: "b"
        text: "nvidia.com/gpu"
      - id: "c"
        text: "replicas"
      - id: "d"
        text: "chunk overlap"
    correct_answer: "a"

  - id: "q74"
    text: "Which are true of the OpenAI/Anthropic-compatible serverless inference API? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Existing OpenAI-SDK code works after changing base_url and api_key"
        is_correct: true
      - id: "b"
        text: "It supports streaming responses"
        is_correct: true
      - id: "c"
        text: "It exposes chat completions at /v1/chat/completions"
        is_correct: true
      - id: "d"
        text: "It requires rewriting clients to use SOAP"
    correct_answer: "a,b,c"

  - id: "q75"
    text: "Why measure the tokens used per response when integrating serverless inference?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Token count drives cost, so measuring it lets you manage spend"
        is_correct: true
      - id: "b"
        text: "Token count sets the Kubernetes replica count"
      - id: "c"
        text: "Token count changes the GPU driver version"
      - id: "d"
        text: "Token count determines the VPC CIDR"
    correct_answer: "a"

  # --- Domain 3 - Building agents with the Gradient AI Platform (18%) ---
  - id: "q76"
    text: "Which DigitalOcean serverless product is most naturally used as a function route (tool) for a Gradient agent?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "DigitalOcean Functions"
        is_correct: true
      - id: "b"
        text: "Spaces"
      - id: "c"
        text: "Cloud Firewalls"
      - id: "d"
        text: "Block Storage volumes"
    correct_answer: "a"

  - id: "q77"
    text: "When designing a function route, what makes it reliable for the agent to call?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A clean, typed input/output tool schema"
        is_correct: true
      - id: "b"
        text: "A higher temperature"
      - id: "c"
        text: "A larger boot disk"
      - id: "d"
        text: "Disabling citations"
    correct_answer: "a"

  - id: "q78"
    text: "What does Guardrails on the Gradient AI Platform help protect against? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Unsafe or moderated content"
        is_correct: true
      - id: "b"
        text: "Leaking sensitive data / PII"
        is_correct: true
      - id: "c"
        text: "Jailbreak / prompt-injection attempts"
        is_correct: true
      - id: "d"
        text: "GPUs overheating physically"
    correct_answer: "a,b,c"

  - id: "q79"
    text: "What is the agent playground primarily for?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Iterating on instructions and inputs before publishing an endpoint"
        is_correct: true
      - id: "b"
        text: "Provisioning GPU node pools"
      - id: "c"
        text: "Storing model artifacts"
      - id: "d"
        text: "Running Meshery Performance Profiles"
    correct_answer: "a"

  - id: "q80"
    text: "Which are real capabilities you use to ship Gradient agents safely and observe them? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Agent versioning"
        is_correct: true
      - id: "b"
        text: "Agent insights"
        is_correct: true
      - id: "c"
        text: "Evaluations with LLM-as-a-judge"
        is_correct: true
      - id: "d"
        text: "Automatic deletion of the base model each night"
    correct_answer: "a,b,c"

  - id: "q81"
    text: "A knowledge base can be exposed to an agent as which kind of tool?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "An MCP tool"
        is_correct: true
      - id: "b"
        text: "A Cloud Firewall"
      - id: "c"
        text: "A block-storage volume"
      - id: "d"
        text: "A Performance Profile"
    correct_answer: "a"

  - id: "q82"
    text: "In a multi-agent customer-support system, what is the benefit of specialized sub-agents behind a router?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Each sub-agent handles a focused intent, improving quality and maintainability"
        is_correct: true
      - id: "b"
        text: "It removes the need for any base model"
      - id: "c"
        text: "It guarantees zero token cost"
      - id: "d"
        text: "It disables guardrails globally"
    correct_answer: "a"

  - id: "q83"
    text: "Which agent setting most directly shapes the agent's behavior and persona?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Its instructions"
        is_correct: true
      - id: "b"
        text: "Its Kubernetes node selector"
      - id: "c"
        text: "Its Spaces bucket name"
      - id: "d"
        text: "Its VPC CIDR"
    correct_answer: "a"

  - id: "q84"
    text: "Which Evaluations technique uses a model to score another model's outputs?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "LLM-as-a-judge"
        is_correct: true
      - id: "b"
        text: "nvidia-smi profiling"
      - id: "c"
        text: "Block-storage snapshotting"
      - id: "d"
        text: "Web crawling"
    correct_answer: "a"

  - id: "q85"
    text: "You want to compare two prompt versions of an agent for quality before rolling one out. Which feature supports this?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Evaluations comparing runs across versions"
        is_correct: true
      - id: "b"
        text: "Raising the GPU count"
      - id: "c"
        text: "Deleting the knowledge base"
      - id: "d"
        text: "Turning off streaming"
    correct_answer: "a"

  - id: "q86"
    text: "Which of the following are legitimate ways to extend or compose Gradient agents? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Function routes to call external APIs or DigitalOcean Functions"
        is_correct: true
      - id: "b"
        text: "Attaching a knowledge base for grounding"
        is_correct: true
      - id: "c"
        text: "Agent routes that delegate to specialized sub-agents"
        is_correct: true
      - id: "d"
        text: "Editing the base model's weights on every request"
    correct_answer: "a,b,c"

  # --- Domain 4 - Knowledge Bases & RAG (14%) ---
  - id: "q87"
    text: "Which sequence correctly orders the core RAG steps at query time?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Embed the query, run vector search/retrieval, then ground the generated answer on the retrieved chunks"
        is_correct: true
      - id: "b"
        text: "Retrain the base model, then answer without retrieval"
      - id: "c"
        text: "Raise temperature, then delete the index"
      - id: "d"
        text: "Crawl the web live for every token generated"
    correct_answer: "a"

  - id: "q88"
    text: "Which step happens at index time rather than query time in a knowledge base?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Chunking documents and generating embeddings"
        is_correct: true
      - id: "b"
        text: "Grounding the final answer with citations"
      - id: "c"
        text: "Vector search against the query"
      - id: "d"
        text: "Streaming tokens to the user"
    correct_answer: "a"

  - id: "q89"
    text: "Which factors influence retrieval quality in a knowledge base? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Chunk size and overlap"
        is_correct: true
      - id: "b"
        text: "Choice of embedding model"
        is_correct: true
      - id: "c"
        text: "Freshness of the index after source changes"
        is_correct: true
      - id: "d"
        text: "The GPU Droplet's hourly price"
    correct_answer: "a,b,c"

  - id: "q90"
    text: "Answers cite stale content after a docs update. What is the correct fix?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Re-index the knowledge base (or re-crawl the source) so embeddings reflect the new content"
        is_correct: true
      - id: "b"
        text: "Increase max_tokens"
      - id: "c"
        text: "Lower the temperature to 0"
      - id: "d"
        text: "Add a second base model"
    correct_answer: "a"

  - id: "q91"
    text: "Which are ways to populate a knowledge base from more than one source type? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Upload files directly"
        is_correct: true
      - id: "b"
        text: "Point it at a Spaces folder"
        is_correct: true
      - id: "c"
        text: "Crawl a public website"
        is_correct: true
      - id: "d"
        text: "Physically ship a hard drive to a data center"
    correct_answer: "a,b,c"

  - id: "q92"
    text: "Attaching a knowledge base to an agent changes the agent's answers how?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "It grounds answers on retrieved private data and can show citations"
        is_correct: true
      - id: "b"
        text: "It gives the agent the ability to call external APIs"
      - id: "c"
        text: "It increases the base model's parameter count"
      - id: "d"
        text: "It disables the agent's instructions"
    correct_answer: "a"

  - id: "q93"
    text: "Which is a symptom that chunk size/overlap needs tuning?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Relevant content exists but is not being retrieved for related queries"
        is_correct: true
      - id: "b"
        text: "The GPU Droplet is billed per hour"
      - id: "c"
        text: "The agent endpoint returns HTTP 200"
      - id: "d"
        text: "Streaming is enabled"
    correct_answer: "a"

  - id: "q94"
    text: "The capstone requires a knowledge base populated from at least two data-source types. Which pairs satisfy that? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Uploaded files plus a crawled website"
        is_correct: true
      - id: "b"
        text: "A Spaces folder plus uploaded files"
        is_correct: true
      - id: "c"
        text: "A crawled website plus an S3 connector"
        is_correct: true
      - id: "d"
        text: "A single uploaded file only"
    correct_answer: "a,b,c"

  - id: "q95"
    text: "What is the difference between knowledge (a knowledge base) and a tool (a function route)?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A knowledge base informs answers via retrieval; a function route performs an action by calling code/an API"
        is_correct: true
      - id: "b"
        text: "A knowledge base performs actions; a function route stores documents"
      - id: "c"
        text: "Both fine-tune the model"
      - id: "d"
        text: "There is no difference"
    correct_answer: "a"

  # --- Domain 5 - GPU compute, 1-Click Models & model serving (14%) ---
  - id: "q96"
    text: "Which command writes a DOKS cluster's kubeconfig locally so kubectl and Meshery can reach it?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "doctl kubernetes cluster kubeconfig save <cluster>"
        is_correct: true
      - id: "b"
        text: "doctl compute droplet create <cluster>"
      - id: "c"
        text: "kubectl get gpu"
      - id: "d"
        text: "nvidia-smi --kubeconfig"
    correct_answer: "a"

  - id: "q97"
    text: "Which two serving approaches in the GPU path both result in an OpenAI-compatible endpoint?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A 1-Click Model and self-hosting with vLLM"
        is_correct: true
      - id: "b"
        text: "Editing /etc/hosts and uploading to Spaces"
      - id: "c"
        text: "Running nvidia-smi and rebooting"
      - id: "d"
        text: "Creating a VPC and a firewall"
    correct_answer: "a"

  - id: "q98"
    text: "Which trade-offs do you reason about when self-hosting an LLM on a GPU? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Quantization"
        is_correct: true
      - id: "b"
        text: "Batching"
        is_correct: true
      - id: "c"
        text: "Context-length limits"
        is_correct: true
      - id: "d"
        text: "The color of the Control Panel theme"
    correct_answer: "a,b,c"

  - id: "q99"
    text: "Which container image does the academy's vLLM Meshery Design use to serve an OpenAI-compatible LLM?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "vllm/vllm-openai"
        is_correct: true
      - id: "b"
        text: "nginx:latest"
      - id: "c"
        text: "postgres:16"
      - id: "d"
        text: "qdrant/qdrant"
    correct_answer: "a"

  - id: "q100"
    text: "Which are parameter-efficient fine-tuning approaches contrasted with full fine-tuning? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "LoRA"
        is_correct: true
      - id: "b"
        text: "QLoRA"
        is_correct: true
      - id: "c"
        text: "PEFT methods generally"
        is_correct: true
      - id: "d"
        text: "Deleting the dataset"
    correct_answer: "a,b,c"

  - id: "q101"
    text: "Where does the GPU path recommend storing datasets and model artifacts for fine-tuning?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Spaces"
        is_correct: true
      - id: "b"
        text: "Inside the agent's instructions"
      - id: "c"
        text: "The Cloud Firewall log"
      - id: "d"
        text: "The nvidia-smi buffer"
    correct_answer: "a"

  - id: "q102"
    text: "For distributed inference on DOKS, which technologies are named in the curriculum?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "llm-d and KServe"
        is_correct: true
      - id: "b"
        text: "Excel and Access"
      - id: "c"
        text: "SOAP and WSDL"
      - id: "d"
        text: "fortio and wrk2"
    correct_answer: "a"

  - id: "q103"
    text: "What advertises the nvidia.com/gpu resource so pods can request GPUs on a DOKS GPU node pool?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The NVIDIA device plugin"
        is_correct: true
      - id: "b"
        text: "The vLLM tokenizer"
      - id: "c"
        text: "kube-proxy"
      - id: "d"
        text: "The Spaces CSI driver"
    correct_answer: "a"

  # --- Domain 6 - Cloud native AI operations with Meshery & DOKS (16%) ---
  - id: "q104"
    text: "Which components make up Meshery's architecture? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Meshery Server"
        is_correct: true
      - id: "b"
        text: "Meshery Operator and MeshSync"
        is_correct: true
      - id: "c"
        text: "Kanvas and mesheryctl"
        is_correct: true
      - id: "d"
        text: "The NVIDIA CUDA compiler"
    correct_answer: "a,b,c"

  - id: "q105"
    text: "Which Meshery surface is the visual designer used to author and inspect Designs and workloads?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Kanvas"
        is_correct: true
      - id: "b"
        text: "fortio"
      - id: "c"
        text: "pgvector"
      - id: "d"
        text: "The Inference Router"
    correct_answer: "a"

  - id: "q106"
    text: "Why import a DOKS GPU cluster into Meshery?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "So MeshSync discovers nodes and workloads and you can visualize and operate GPU node pools"
        is_correct: true
      - id: "b"
        text: "To physically install GPUs"
      - id: "c"
        text: "To disable Kubernetes RBAC"
      - id: "d"
        text: "To convert the cluster to serverless inference"
    correct_answer: "a"

  - id: "q107"
    text: "An inference Design should request GPUs to avoid scheduling on CPU. Which is the correct resource key?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "nvidia.com/gpu in resources.limits"
        is_correct: true
      - id: "b"
        text: "spec.gpu: true"
      - id: "c"
        text: "annotations: gpu/enabled: yes"
      - id: "d"
        text: "nodeName: gpu"
    correct_answer: "a"

  - id: "q108"
    text: "What does a Meshery Design for an LLM serving stack typically contain? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "A Deployment requesting nvidia.com/gpu"
        is_correct: true
      - id: "b"
        text: "A Service exposing the model port"
        is_correct: true
      - id: "c"
        text: "Optionally an Ingress for external access"
        is_correct: true
      - id: "d"
        text: "A billing invoice PDF"
    correct_answer: "a,b,c"

  - id: "q109"
    text: "How do you version-control Meshery Designs as code?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Back them with GitHub and use design-as-code / PR previews"
        is_correct: true
      - id: "b"
        text: "Store them only in the nvidia-smi cache"
      - id: "c"
        text: "Keep them solely in browser local storage"
      - id: "d"
        text: "Print them and file them physically"
    correct_answer: "a"

  - id: "q110"
    text: "What is the value of saving and comparing Meshery Performance Profiles over time?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "You can detect performance regressions after design changes"
        is_correct: true
      - id: "b"
        text: "It lowers the GPU's physical temperature"
      - id: "c"
        text: "It rewrites the agent instructions"
      - id: "d"
        text: "It disables Prometheus"
    correct_answer: "a"

  - id: "q111"
    text: "Which storage class do the academy designs use for DigitalOcean Block Storage-backed persistence (e.g., a Qdrant PVC)?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "do-block-storage"
        is_correct: true
      - id: "b"
        text: "nvidia.com/gpu"
      - id: "c"
        text: "standard-rwx"
      - id: "d"
        text: "spaces-csi"
    correct_answer: "a"

  - id: "q112"
    text: "Which Meshery capabilities support multi-cluster AI platform operations? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Workspaces, teams, and RBAC"
        is_correct: true
      - id: "b"
        text: "Promoting designs across dev -> staging -> prod clusters"
        is_correct: true
      - id: "c"
        text: "A single pane of glass across DO and hybrid/on-prem GPU clusters"
        is_correct: true
      - id: "d"
        text: "Deleting all clusters to save money"
    correct_answer: "a,b,c"

  - id: "q113"
    text: "Which command starts a local Meshery deployment?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "mesheryctl system start"
        is_correct: true
      - id: "b"
        text: "mesheryctl gpu boot"
      - id: "c"
        text: "doctl meshery up"
      - id: "d"
        text: "kubectl meshery init"
    correct_answer: "a"

  # --- Domain 7 - Production engineering: routing, security, observability & responsible AI (12%) ---
  - id: "q114"
    text: "Which Inference Engine mode best fits a large asynchronous job that does not need real-time responses?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Batch"
        is_correct: true
      - id: "b"
        text: "Serverless (real-time)"
      - id: "c"
        text: "Dedicated reserved capacity"
      - id: "d"
        text: "Streaming only"
    correct_answer: "a"

  - id: "q115"
    text: "Which policy behaviors does the Inference Router provide? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Policy-driven model selection by intent"
        is_correct: true
      - id: "b"
        text: "Cost-vs-latency trade-offs"
        is_correct: true
      - id: "c"
        text: "A/B and canary across models with fallback chains"
        is_correct: true
      - id: "d"
        text: "Physically manufacturing GPUs"
    correct_answer: "a,b,c"

  - id: "q116"
    text: "Which managed data option gives you vector search inside a relational database on DigitalOcean?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Managed PostgreSQL with the pgvector extension"
        is_correct: true
      - id: "b"
        text: "A Cloud Firewall rule"
      - id: "c"
        text: "A Spaces lifecycle policy"
      - id: "d"
        text: "The agent playground"
    correct_answer: "a"

  - id: "q117"
    text: "Which vector databases can you run on DOKS (for example deployed via Meshery)? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Qdrant"
        is_correct: true
      - id: "b"
        text: "Weaviate"
        is_correct: true
      - id: "c"
        text: "Milvus"
        is_correct: true
      - id: "d"
        text: "nvidia-smi"
    correct_answer: "a,b,c"

  - id: "q118"
    text: "What is the correct way to handle model/agent access keys in production?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Keep them out of Git, scope them least-privilege, and rotate them"
        is_correct: true
      - id: "b"
        text: "Commit them to a public repository for convenience"
      - id: "c"
        text: "Share one root key across all services"
      - id: "d"
        text: "Embed them in client-side JavaScript"
    correct_answer: "a"

  - id: "q119"
    text: "In a GitHub Actions + Meshery pipeline, how are Evaluations used?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "As a quality gate that can fail the build and block a bad release"
        is_correct: true
      - id: "b"
        text: "As a way to provision GPUs"
      - id: "c"
        text: "As a replacement for source control"
      - id: "d"
        text: "To disable progressive delivery"
    correct_answer: "a"

  - id: "q120"
    text: "Which pair of practices supports responsible AI in production?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Auditability and human oversight"
        is_correct: true
      - id: "b"
        text: "Hiding all logs and removing review"
      - id: "c"
        text: "Maximizing temperature and removing guardrails"
      - id: "d"
        text: "Hardcoding one model and never evaluating it"
    correct_answer: "a"

  # =====================================================================
  # SET C (q121-q180) - one full representative exam across all 7 domains
  # =====================================================================
  # --- Domain 1 - AI-Native Cloud fundamentals & service selection (12%) ---
  - id: "q121"
    text: "Which choice best matches a request for a self-managed, containerized model-serving platform with GPU scheduling?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "DOKS (DigitalOcean Kubernetes) with a GPU node pool"
        is_correct: true
      - id: "b"
        text: "Serverless inference"
      - id: "c"
        text: "Spaces object storage"
      - id: "d"
        text: "A Cloud Firewall"
    correct_answer: "a"

  - id: "q122"
    text: "Which statements about DigitalOcean AI pricing models are correct? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Serverless inference is billed per token"
        is_correct: true
      - id: "b"
        text: "GPU Droplets are billed per GPU-hour while they exist"
        is_correct: true
      - id: "c"
        text: "Destroying idle GPU Droplets stops their charges"
        is_correct: true
      - id: "d"
        text: "Serverless inference charges a fixed monthly fee regardless of usage"
    correct_answer: "a,b,c"

  - id: "q123"
    text: "Which interface is the no-code way to create and manage DigitalOcean AI resources?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The Control Panel"
        is_correct: true
      - id: "b"
        text: "Raw GPU firmware"
      - id: "c"
        text: "A Meshery Performance Profile"
      - id: "d"
        text: "The pgvector shell"
    correct_answer: "a"

  - id: "q124"
    text: "A workload has long idle periods with occasional bursts and you want zero idle cost. Which is the better fit?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Serverless inference"
        is_correct: true
      - id: "b"
        text: "A reserved 8x H100 GPU Droplet running 24/7"
      - id: "c"
        text: "A Bare Metal GPU leased monthly"
      - id: "d"
        text: "A permanently running DOKS GPU node pool"
    correct_answer: "a"

  - id: "q125"
    text: "Which tool would you script to automate creating Droplets and DOKS clusters in CI?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "doctl and/or the DigitalOcean API"
        is_correct: true
      - id: "b"
        text: "nvidia-smi"
      - id: "c"
        text: "fortio"
      - id: "d"
        text: "The agent playground"
    correct_answer: "a"

  - id: "q126"
    text: "Which of these are DigitalOcean AI-Native Cloud building blocks a solution can select among? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "The Gradient AI Platform"
        is_correct: true
      - id: "b"
        text: "GPU Droplets"
        is_correct: true
      - id: "c"
        text: "DOKS with GPU node pools"
        is_correct: true
      - id: "d"
        text: "A mandatory on-premises mainframe"
    correct_answer: "a,b,c"

  - id: "q127"
    text: "Why does the AI-Native Cloud include a distinct 'data' layer?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "AI applications depend on storage and retrieval (e.g., Spaces, databases, vector search) as a first-class concern"
        is_correct: true
      - id: "b"
        text: "Because GPUs cannot run without it physically"
      - id: "c"
        text: "Because it replaces the inference layer"
      - id: "d"
        text: "Because it disables agents"
    correct_answer: "a"

  # --- Domain 2 - Foundation models, serverless inference & the model catalog (14%) ---
  - id: "q128"
    text: "A frontier model from OpenAI or Anthropic is available through DigitalOcean. How do you call it in code you already wrote for the OpenAI SDK?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Change base_url and api_key; the endpoint is OpenAI-compatible"
        is_correct: true
      - id: "b"
        text: "Rewrite the app in a new language"
      - id: "c"
        text: "Use a special binary protocol"
      - id: "d"
        text: "Call it only from the Control Panel UI"
    correct_answer: "a"

  - id: "q129"
    text: "What is the effect of lowering temperature toward 0 on a chat completion?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "More deterministic, focused output"
        is_correct: true
      - id: "b"
        text: "Longer output guaranteed"
      - id: "c"
        text: "Higher token cost per call"
      - id: "d"
        text: "It enables streaming automatically"
    correct_answer: "a"

  - id: "q130"
    text: "Which of the following are true about serverless inference cost management? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "You pay per token consumed"
        is_correct: true
      - id: "b"
        text: "Setting max_tokens bounds the response size and cost"
        is_correct: true
      - id: "c"
        text: "Choosing a smaller model can reduce cost"
        is_correct: true
      - id: "d"
        text: "There is no way to influence per-request cost"
    correct_answer: "a,b,c"

  - id: "q131"
    text: "Which endpoint suffix do OpenAI-compatible chat requests use across serverless inference, vLLM, and TGI?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "/v1/chat/completions"
        is_correct: true
      - id: "b"
        text: "/infer"
      - id: "c"
        text: "/generate"
      - id: "d"
        text: "/complete"
    correct_answer: "a"

  - id: "q132"
    text: "Which key concept lets a team move from a POC model to a different catalog model with almost no code change?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The consistent OpenAI-compatible interface"
        is_correct: true
      - id: "b"
        text: "Rewriting to gRPC"
      - id: "c"
        text: "Switching to SOAP"
      - id: "d"
        text: "Deleting the SDK"
    correct_answer: "a"

  - id: "q133"
    text: "Which interfaces are shown for making a first chat completion in AI Foundations? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "curl"
        is_correct: true
      - id: "b"
        text: "The Python openai SDK"
        is_correct: true
      - id: "c"
        text: "TypeScript"
        is_correct: true
      - id: "d"
        text: "A COBOL client"
    correct_answer: "a,b,c"

  - id: "q134"
    text: "Why might you prefer a smaller catalog model for a high-volume, latency-sensitive feature?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Lower per-token cost and often lower latency when quality is sufficient"
        is_correct: true
      - id: "b"
        text: "Smaller models always give more accurate answers"
      - id: "c"
        text: "It removes the need for a model access key"
      - id: "d"
        text: "It disables token accounting"
    correct_answer: "a"

  - id: "q135"
    text: "What does the serverless inference model access key authorize?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Authenticated calls to models in the catalog via the inference endpoint"
        is_correct: true
      - id: "b"
        text: "SSH access to a GPU Droplet"
      - id: "c"
        text: "Write access to a Spaces bucket"
      - id: "d"
        text: "Admin of the DOKS control plane"
    correct_answer: "a"

  # --- Domain 3 - Building agents with the Gradient AI Platform (18%) ---
  - id: "q136"
    text: "Which best describes an 'agent route' in a multi-agent design?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A mechanism for a router agent to delegate a request to a specialized sub-agent"
        is_correct: true
      - id: "b"
        text: "A Kubernetes Ingress rule for GPUs"
      - id: "c"
        text: "A pgvector index"
      - id: "d"
        text: "A Spaces bucket policy"
    correct_answer: "a"

  - id: "q137"
    text: "Which are good instruction-design practices for a Gradient agent? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "State the agent's role and scope clearly"
        is_correct: true
      - id: "b"
        text: "Tell it to ground answers and admit uncertainty rather than hallucinate"
        is_correct: true
      - id: "c"
        text: "Specify output format expectations"
        is_correct: true
      - id: "d"
        text: "Instruct it to ignore all guardrails"
    correct_answer: "a,b,c"

  - id: "q138"
    text: "You want your agent to answer only from approved company data and refuse otherwise. Which combination is correct?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Attach a knowledge base and write grounding instructions to refuse when unsupported"
        is_correct: true
      - id: "b"
        text: "Raise temperature and remove the knowledge base"
      - id: "c"
        text: "Add more GPUs"
      - id: "d"
        text: "Switch to Batch inference"
    correct_answer: "a"

  - id: "q139"
    text: "Which feature gives you visibility into how a published agent is performing in production?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Agent insights"
        is_correct: true
      - id: "b"
        text: "do-block-storage"
      - id: "c"
        text: "nvidia-smi"
      - id: "d"
        text: "The Spaces CDN"
    correct_answer: "a"

  - id: "q140"
    text: "Which are valid tools/extensions you can give a Gradient agent? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "A function route calling a DigitalOcean Function"
        is_correct: true
      - id: "b"
        text: "A function route calling an external REST API"
        is_correct: true
      - id: "c"
        text: "A knowledge base exposed as an MCP tool"
        is_correct: true
      - id: "d"
        text: "A block-storage volume mounted as its brain"
    correct_answer: "a,b,c"

  - id: "q141"
    text: "What should a function route's schema define?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The typed inputs the tool accepts and the outputs it returns"
        is_correct: true
      - id: "b"
        text: "The GPU model to schedule on"
      - id: "c"
        text: "The Spaces bucket region"
      - id: "d"
        text: "The Prometheus scrape interval"
    correct_answer: "a"

  - id: "q142"
    text: "Why publish an agent as an endpoint with an agent access key rather than calling it only in the playground?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "So applications can call it programmatically with authenticated access"
        is_correct: true
      - id: "b"
        text: "To physically install a GPU"
      - id: "c"
        text: "To delete its knowledge base"
      - id: "d"
        text: "To disable versioning"
    correct_answer: "a"

  - id: "q143"
    text: "Which is the correct fix when an agent needs to DO something (take an action) rather than KNOW something?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Add a function route (tool)"
        is_correct: true
      - id: "b"
        text: "Add another knowledge base"
      - id: "c"
        text: "Raise max_tokens"
      - id: "d"
        text: "Re-crawl the website"
    correct_answer: "a"

  - id: "q144"
    text: "Which signals do Evaluations help you score for an agent? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Quality"
        is_correct: true
      - id: "b"
        text: "Latency"
        is_correct: true
      - id: "c"
        text: "Cost and safety"
        is_correct: true
      - id: "d"
        text: "The GPU's serial number"
    correct_answer: "a,b,c"

  - id: "q145"
    text: "What is the recommended way to iterate on an agent before shipping?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Test it in the playground with sample inputs, then evaluate and version it"
        is_correct: true
      - id: "b"
        text: "Deploy straight to production with no testing"
      - id: "c"
        text: "Delete guardrails first"
      - id: "d"
        text: "Only test it after customers report issues"
    correct_answer: "a"

  # --- Domain 4 - Knowledge Bases & RAG (14%) ---
  - id: "q146"
    text: "Which choice correctly names the artifacts a knowledge base produces from source documents for retrieval?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Chunks that are embedded into vectors and stored for vector search"
        is_correct: true
      - id: "b"
        text: "New base-model weights"
      - id: "c"
        text: "Cloud Firewall rules"
      - id: "d"
        text: "GPU node pools"
    correct_answer: "a"

  - id: "q147"
    text: "Which connectors can supply a knowledge base beyond direct uploads and Spaces? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "AWS S3"
        is_correct: true
      - id: "b"
        text: "Dropbox"
        is_correct: true
      - id: "c"
        text: "Google Drive"
        is_correct: true
      - id: "d"
        text: "A physical fax machine"
    correct_answer: "a,b,c"

  - id: "q148"
    text: "A knowledge base returns irrelevant chunks for many queries. Which change is most likely to help first?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Choose a more appropriate embedding model and tune chunk size/overlap"
        is_correct: true
      - id: "b"
        text: "Increase the base model's temperature"
      - id: "c"
        text: "Add more GPUs to the agent"
      - id: "d"
        text: "Disable citations"
    correct_answer: "a"

  - id: "q149"
    text: "Which statement about grounding is correct?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Grounding ties the generated answer to retrieved source content, enabling citations"
        is_correct: true
      - id: "b"
        text: "Grounding retrains the model on each query"
      - id: "c"
        text: "Grounding is another word for raising temperature"
      - id: "d"
        text: "Grounding removes the need for an embedding model"
    correct_answer: "a"

  - id: "q150"
    text: "Which are true about knowledge base citations? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "They trace an answer back to the chunk(s) that grounded it"
        is_correct: true
      - id: "b"
        text: "They make answers auditable"
        is_correct: true
      - id: "c"
        text: "They help users verify correctness"
        is_correct: true
      - id: "d"
        text: "They increase the GPU clock speed"
    correct_answer: "a,b,c"

  - id: "q151"
    text: "When is re-indexing required?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Whenever the underlying source documents change and you need retrieval to reflect them"
        is_correct: true
      - id: "b"
        text: "Every time the agent temperature changes"
      - id: "c"
        text: "Only when the GPU Droplet is destroyed"
      - id: "d"
        text: "Never; indexes update the base model automatically"
    correct_answer: "a"

  - id: "q152"
    text: "Which is NOT something a knowledge base does?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Call an external API to take an action"
        is_correct: true
      - id: "b"
        text: "Chunk source documents"
      - id: "c"
        text: "Generate embeddings"
      - id: "d"
        text: "Retrieve relevant chunks at query time"
    correct_answer: "a"

  - id: "q153"
    text: "For a capstone knowledge base, which is the strongest evidence that grounding works?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The agent answers with visible citations pointing to the source content"
        is_correct: true
      - id: "b"
        text: "The GPU utilization is high"
      - id: "c"
        text: "The endpoint returns quickly"
      - id: "d"
        text: "The temperature is set to 0"
    correct_answer: "a"

  # --- Domain 5 - GPU compute, 1-Click Models & model serving (14%) ---
  - id: "q154"
    text: "Which GPUs are named as DigitalOcean GPU options across the GPU compute path? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "NVIDIA H100 / H200"
        is_correct: true
      - id: "b"
        text: "AMD MI300X"
        is_correct: true
      - id: "c"
        text: "NVIDIA L40S and RTX 4000/6000 Ada"
        is_correct: true
      - id: "d"
        text: "Apple M-series desktop chips"
    correct_answer: "a,b,c"

  - id: "q155"
    text: "For inference of an 8B model versus large-scale training, which configuration guidance applies?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A single GPU often suffices for inference, while training may need multi-GPU (e.g., 8-GPU) configurations"
        is_correct: true
      - id: "b"
        text: "Training always uses one GPU and inference always uses eight"
      - id: "c"
        text: "GPU count never matters"
      - id: "d"
        text: "Only TPUs can do inference"
    correct_answer: "a"

  - id: "q156"
    text: "Which example node-pool size string appears in the academy designs for an L40S GPU pool?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "gpu-l40sx1-48gb"
        is_correct: true
      - id: "b"
        text: "s-1vcpu-1gb"
      - id: "c"
        text: "c-32"
      - id: "d"
        text: "m6i.large"
    correct_answer: "a"

  - id: "q157"
    text: "What is the recommended way to label a DOKS GPU node pool so GPU workloads schedule onto it?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Create the pool with --label nvidia.com/gpu=true"
        is_correct: true
      - id: "b"
        text: "Rename the cluster to 'gpu'"
      - id: "c"
        text: "Set the agent temperature to 1"
      - id: "d"
        text: "Add a Cloud Firewall rule"
    correct_answer: "a"

  - id: "q158"
    text: "Which are true about 1-Click Models on DigitalOcean? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "They are powered by Hugging Face"
        is_correct: true
      - id: "b"
        text: "They expose an OpenAI-compatible endpoint"
        is_correct: true
      - id: "c"
        text: "They require essentially zero serving configuration"
        is_correct: true
      - id: "d"
        text: "They cannot be called from the OpenAI SDK"
    correct_answer: "a,b,c"

  - id: "q159"
    text: "In the vLLM Meshery Design, which port does the container expose and the Service target for the OpenAI-compatible API?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "8000"
        is_correct: true
      - id: "b"
        text: "22"
      - id: "c"
        text: "5432"
      - id: "d"
        text: "6379"
    correct_answer: "a"

  - id: "q160"
    text: "Which probe does the vLLM Design use to confirm the server is ready to receive traffic?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A readiness probe on the /health path"
        is_correct: true
      - id: "b"
        text: "A liveness probe that runs nvidia-smi"
      - id: "c"
        text: "A startup probe on port 22"
      - id: "d"
        text: "No probe at all"
    correct_answer: "a"

  - id: "q161"
    text: "Which are legitimate benchmarking targets when serving an LLM on a GPU? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Tokens per second (throughput)"
        is_correct: true
      - id: "b"
        text: "Request latency (e.g., p95)"
        is_correct: true
      - id: "c"
        text: "Error rate under load"
        is_correct: true
      - id: "d"
        text: "The Control Panel's font size"
    correct_answer: "a,b,c"

  - id: "q162"
    text: "Why does moving a 1-Click Model POC to production require no code change to the client?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Both expose the same OpenAI-compatible endpoint interface"
        is_correct: true
      - id: "b"
        text: "The client is automatically rewritten by DigitalOcean"
      - id: "c"
        text: "Production disables authentication"
      - id: "d"
        text: "The model is embedded into the client binary"
    correct_answer: "a"

  # --- Domain 6 - Cloud native AI operations with Meshery & DOKS (16%) ---
  - id: "q163"
    text: "Which mesheryctl command runs a Performance Profile against a deployed inference Service?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "mesheryctl perf apply"
        is_correct: true
      - id: "b"
        text: "mesheryctl gpu benchmark"
      - id: "c"
        text: "mesheryctl model test"
      - id: "d"
        text: "mesheryctl system stop"
    correct_answer: "a"

  - id: "q164"
    text: "Which best describes Meshery's overall role?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The cloud native manager - a 'manager of managers' for designing and operating infrastructure"
        is_correct: true
      - id: "b"
        text: "A hosted LLM inference API"
      - id: "c"
        text: "A GPU driver installer"
      - id: "d"
        text: "A replacement for Prometheus"
    correct_answer: "a"

  - id: "q165"
    text: "Which lifecycle operations can Meshery perform on workloads in a connected cluster? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Deploy and undeploy"
        is_correct: true
      - id: "b"
        text: "Scale"
        is_correct: true
      - id: "c"
        text: "Detect drift between desired and actual state"
        is_correct: true
      - id: "d"
        text: "Bill the customer's credit card"
    correct_answer: "a,b,c"

  - id: "q166"
    text: "What does relationship/policy validation on a Design catch before deployment?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Misconfigurations such as a missing nvidia.com/gpu limit"
        is_correct: true
      - id: "b"
        text: "A slow internet connection"
      - id: "c"
        text: "An expired TLS certificate on docs.digitalocean.com"
      - id: "d"
        text: "A typo in the agent's instructions"
    correct_answer: "a"

  - id: "q167"
    text: "The academy's GPU observability design deploys which workload to expose GPU metrics?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The NVIDIA DCGM exporter as a DaemonSet"
        is_correct: true
      - id: "b"
        text: "A vLLM Deployment"
      - id: "c"
        text: "A Qdrant StatefulSet"
      - id: "d"
        text: "A PostgreSQL primary"
    correct_answer: "a"

  - id: "q168"
    text: "Which observability pieces does Meshery wire together for AI workloads? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Prometheus for metrics"
        is_correct: true
      - id: "b"
        text: "Grafana for dashboards"
        is_correct: true
      - id: "c"
        text: "GPU utilization and inference-latency views"
        is_correct: true
      - id: "d"
        text: "A physical thermostat for the data center"
    correct_answer: "a,b,c"

  - id: "q169"
    text: "How is a Qdrant vector database persisted in the academy design?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "A StatefulSet with a PVC on the do-block-storage storage class"
        is_correct: true
      - id: "b"
        text: "An in-memory Pod with no storage"
      - id: "c"
        text: "A Spaces bucket mounted as root"
      - id: "d"
        text: "The GPU's VRAM"
    correct_answer: "a"

  - id: "q170"
    text: "Which workflow best represents the Meshery operating loop for AI workloads?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Import -> design -> deploy -> performance-test -> observe -> redesign"
        is_correct: true
      - id: "b"
        text: "Train -> delete -> reboot -> ignore"
      - id: "c"
        text: "Crawl -> embed -> retrieve -> cite"
      - id: "d"
        text: "Build -> tag -> push -> forget"
    correct_answer: "a"

  - id: "q171"
    text: "Which are reasons to save a serving stack to the Meshery Catalog? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Reuse it as a curated template"
        is_correct: true
      - id: "b"
        text: "Share consistent, validated configuration across teams"
        is_correct: true
      - id: "c"
        text: "Version and promote it across clusters"
        is_correct: true
      - id: "d"
        text: "Permanently delete the source cluster"
    correct_answer: "a,b,c"

  - id: "q172"
    text: "What does MeshSync give you immediately after connecting a DOKS cluster?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Real-time discovery of nodes and workloads for visualization and operations"
        is_correct: true
      - id: "b"
        text: "A fine-tuned model"
      - id: "c"
        text: "A Spaces bucket"
      - id: "d"
        text: "A new frontier model in the catalog"
    correct_answer: "a"

  # --- Domain 7 - Production engineering: routing, security, observability & responsible AI (12%) ---
  - id: "q173"
    text: "Which Inference Engine mode fits a reserved, predictable, high-throughput production workload?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Dedicated"
        is_correct: true
      - id: "b"
        text: "Batch"
      - id: "c"
        text: "A one-off web crawl"
      - id: "d"
        text: "Short-answer grading"
    correct_answer: "a"

  - id: "q174"
    text: "Which are components of a production AI data layer on DigitalOcean? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Spaces (S3-compatible object storage)"
        is_correct: true
      - id: "b"
        text: "Managed PostgreSQL with pgvector"
        is_correct: true
      - id: "c"
        text: "Vector DBs (Qdrant/Weaviate/Milvus) on DOKS"
        is_correct: true
      - id: "d"
        text: "A Cloud Firewall used as a database"
    correct_answer: "a,b,c"

  - id: "q175"
    text: "Which networking controls provide private connectivity and access restriction for inference services?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "VPCs and Cloud Firewalls"
        is_correct: true
      - id: "b"
        text: "Raising temperature"
      - id: "c"
        text: "Increasing max_tokens"
      - id: "d"
        text: "Adding more chunks"
    correct_answer: "a"

  - id: "q176"
    text: "Which belong to a responsible-AI posture in production? (Select all that apply.)"
    type: "multiple-answers"
    marks: 3
    options:
      - id: "a"
        text: "Transparency about model behavior and limits"
        is_correct: true
      - id: "b"
        text: "Auditability of decisions and data"
        is_correct: true
      - id: "c"
        text: "Human oversight for sensitive actions"
        is_correct: true
      - id: "d"
        text: "Removing all guardrails to speed responses"
    correct_answer: "a,b,c"

  - id: "q177"
    text: "What is progressive delivery in an AI CI/CD pipeline?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Rolling out changes gradually (e.g., canary) with the ability to roll back"
        is_correct: true
      - id: "b"
        text: "Deploying to 100% of users instantly with no rollback"
      - id: "c"
        text: "Deleting the previous model permanently before testing"
      - id: "d"
        text: "Disabling evaluations during release"
    correct_answer: "a"

  - id: "q178"
    text: "Why place PII guardrails 'at the edge' of an AI service?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "To catch and handle sensitive data before it reaches the model or logs"
        is_correct: true
      - id: "b"
        text: "To increase GPU throughput"
      - id: "c"
        text: "To reduce the model's parameter count"
      - id: "d"
        text: "To disable the Inference Router"
    correct_answer: "a"

  - id: "q179"
    text: "Which control lets you fall back to an alternate model if the primary is unavailable or too costly?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "The Inference Router's fallback chains"
        is_correct: true
      - id: "b"
        text: "A readiness probe"
      - id: "c"
        text: "A pgvector index"
      - id: "d"
        text: "A Spaces lifecycle rule"
    correct_answer: "a"

  - id: "q180"
    text: "Which best captures why unit economics (spend per request) matters for production AI?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "It ties model/routing choices to cost so you can keep the service economically sustainable"
        is_correct: true
      - id: "b"
        text: "It sets the Kubernetes version"
      - id: "c"
        text: "It configures the embedding model"
      - id: "d"
        text: "It determines the GPU's physical location"
    correct_answer: "a"
---
