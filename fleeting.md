# AI ENGINEERING
---

date: [[2025/06/27]]


## Glossary of concepts

- *token*: Basic unit of a LLM
- *tokenization*: The proccess of breaking the original text into tokens. An average token is 3/4 the size of a word.
- *masked language model*: Trained to predict missing tokens before and after the missing tokens. I.e. "My favorite ___ is blue" should predict the missing word is color. They're commonly used for non-generative tasks such as sentiment analysis or code debugging.
- *autoregressive language model*: Trained to predict the nect work in a sequence.
- *supervised learning*: ML algorithms trained on labeled data.
- *self-supervised learning*: ML algorithms infer labels for the input data.
- *unsupervised learning*: The algorithm don't need labels at all.
- *foundation models*: also called multi-modal models
- *prompt engineering*: The process of creating prompts for our models.
- *RAG*: Acronym of Reatrival Augmented Generation.
- *finetunning* is the process of further training the model on a high quality dataset to perform an specific task.

## Chapter 1

- Developers can set the *vocabulary* size and the tokenization method.
- Tokens are used instead of words since they're the minimal unit of meaning in language. I.e. chatGPTing. ChatGPT + ing, although the word is invented we can understand what it means.
- Autoregressive models are the models used by all LLMs so they're much more popular than masked language models.
- LLMs are completion machines. Completions are predictions and can be wrong. Doesn't that sound like the human mind?
- AlexNet was the model that started the DL revolution and it was *supervised*.
- There're many types of ML algorithms to predict the weather, stocks, etc... What differentiates the language model algorithms from the other ones is that they've overcome the bottleneck of training on labeled data (supervised learning). The beauty of language models is in that they can train using with *self-supervision*.
- Manually labelling data to be consumed by ML algorithms is too expensive to do it effectively.
- `<BOS>` and `<EOS>` are markers needed for the LM to work with multiple sequences.
  - #question What is a sequence in that context?
- "Large" in the name LLMs is really unscientific. Where's the boundary between small and large?
- LM use *parameters* to quantify their size. The rule of thumb is that the more parameters the more capable is a model but this is not always true. As an example, we can see that Deepseek has a lower number of parameters but it's similar in capabilities to much larger models. IMO the architecture of the model is more important than the number of parameters.
- *Foundation models* incorporate other modalities like video, image, sound... they're not only limited to text.        
  - They generalize and they can perform a wide range of tasks. Previously, models were trained on specific tasks. 
- In prompt engineering, we craft a defailed prompt with multiple examples
- If we connect a model to a vector database we can get the model to retrieve information from that database. This is called RAG (Reatrival augmented generation).
- The current paradigm is to use a llm or foundation model from a provider and build RAG, finetune or craft some prompts on top of the model to perform the task at hand. The problem I see with that is the dependency on that foundation model. What will happen when the foundation model is so capable that it can perform the task you're building the app for? Your app will be left to oblivion since noone will pay for a service that the foundation model provides for free. For me this is the curse of building apps on top of models.
- The amount in founding and ai investment skyrocketed 2023. IMO it will make AI progress move even faster.
- page 14. `Anyone, and I mean anyone, can now develop AI applications`
