# AI ENGINEERING
---

start_date: [[2025/06/27]]

## Resources

- [list of AI apps](https://huyenchip.com/llama-police)
- [aicommits](https://github.com/Nutlope/aicommits) -> tool for autogenerating commit messages


## Glossary of concepts

- *token*: Basic unit of a LLM
- *tokenization*: The process of breaking the original text into tokens. An average token is 3/4 the size of a word.
- *masked language model*: Trained to predict missing tokens before and after the missing tokens. I.e. "My favorite ___ is blue" should predict the missing word is color. They're commonly used for non-generative tasks such as sentiment analysis or code debugging.
- *autoregressive language model*: Trained to predict the next work in a sequence.
- *supervised learning*: ML algorithms trained on labeled data.
- *self-supervised learning*: ML algorithms infer labels for the input data.
- *unsupervised learning*: The algorithm don't need labels at all.
- *foundation models*: also called multi-modal models
- *prompt engineering*: The process of creating prompts for our models.
- *RAG*: Acronym of Reatrival Augmented Generation.
- *finetunning* is the process of further training the model on a high quality dataset to perform an specific task.
- *agents*: AI's that can plan and use tools.
- *human-in-the-loop*: When an AI agent involves humans in the decision making process.
- *inference*: The process of getting an output given an input.
- *quantization*: The process of reducing the precision of model weights.

## Chapter 1 - Introduction to Building AI Applications with Foundation Models

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
- page 19. Companies are more likely to deploy internal AI applications instead of consumer facing ones.
- page 20. https://github.com/Nutlope/aicommits
- page 21. Jensen Huang thinks that code will no longer be relevant. I accepted that I'll be replaced or my job will completely change.
- page 21. AI is much better at FE dev than BE dev. I think this is interesting. This is provably due to the fact that the FE tends to have less business logic. Without the proper context an AI can easily mess up the business logic.
- page 22. It's scary to think the level on which adds will be targeted. Currently adds can be generated and tested (A/B testing) to see which ones generate more engagement. Adds can also be customized to season and region. Maybe in the future they will be custom to your digital persona
- page 24. The strategy to generate a site optimized for SEO and sell advertising spots via exchanges is nefarious and genius at the same time. This strategy is hitting hard google since the top spots on searches will be junk generated sites. This will decrease the quality of the Internet's content...
- page 24. AI should be used to generate a personalized study plan. At EDPuzzle we should focus on gathering student data so we can tailor the content to their needs.
- page 28. IDP (Intelligent Data Processing) is an industry that will grow a lot. It's based on extracting data from contracts, reports, charts...
- page 30. We want to use a dynamic feature since adapting to the changes in performance of the user will be key. Each user should have their own model.
- page 31. There're three types of competitive advantages for companies in AI: technology, data and distribution. Technology is the same for all competitors so it doesn't matter. Distribution belongs to the owner of the foundation models. The data advantage is the one that can really have impact and allow a company to have an advantage over the competition.
- page 31. #lookup Data flywheel
- page 33. When designing an AI application the **pareto principle** applies. Having a prototype that does 80% of what you want it's easy. Removing all the hallucinations and bringing the product to production ready takes a lot more time. That begs the question, if foundation models improve to the point that don't hallucinate. Is this difficulty going to disappear? what will happen to the so called "AI Engineers"?
- page 37. We have three layers of abstraction in AI engineering: Application, Model and Infrastructure.
- page 39-40. The main difference between traditional ML and the current "AI Engineering" trend is that the later focus more in the tuning of the model (with prompts and other methods). Traditional ML focuses on training the models to perform a certain task. LLMs have more letancy so we need a lot of optimization. In addition, since they produce open-ended outputs, they're hard to evaluate.
- page 40. There're two methods for model adaptation: prompt-based techniques (do not modify the weights of the model), finetuning requires updating the model weights.
- page 41. Modeling and training knowledge is not a requirement to be able to work with LLMs.
- page 41. *pre-training* is the process of training the model from scratch. It take a bast amount of resources to do and only a few know how to do it effectively at scale. *finetuning* and *post-training* take the trained weights and modifies them for a specific task.
- page 41. The difference between *finetuning* and *post-training* is nuanced. Finetuning is done by application developers while post-training is usually done by model developers.
- page 42. Data will be the main differentatior knowing dataset engineering will be a really nice skill to have.
- page 42. Since most foundation models are autoregressive their output latencies are linear. I.e. if it takes 0.1s to produce a token it will take 1s to produce 10. Since users are impatient (provably due to current social media trends) this latency needs to be driven down. This is what *inference optimization* tried to do.
- page 47. One advantage that full-stack engineers have over ML engineers is their ability to turn ideas into demos.

## Chapter 2 - Understanding Foundation Models

