# AI ENGINEERING
---

date: [[2025/06/27]]

## Resources

- [list of AI apps](https://huyenchip.com/llama-police)
- [aicommits](https://github.com/Nutlope/aicommits) -> tool for autogenerating commit messages


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
- *agents*: AI's that can plan and use tools.

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
- page 19. Companies are more likely to deploy internal AI applications instead of consumer facing ones.
- page 20. https://github.com/Nutlope/aicommits
- page 21. Jensen Huang thinks that code will no longer be relevant. I accepted that I'll be replaced or my job will completely change.
- page 21. AI is much better at FE dev than BE dev. I think this is interesing. This is provably due to the fact that the FE tends to have less business logic. Without the proper context an AI can easily mess up the business logic.
- page 22. It's scary to think the level on which adds will be targeted. Currently adds can be generated and tested (A/B testing) to see which ones generate more engagement. Adds can also be customized to season and region. Maybe in the future they will be custom to your digital persona
- page 24. The strategy to generate a site optimized for SEO and sell advertising spots via exchanges is nefarious and genious at the same time. This strategy is hitting hard google since the top spots on searches will be junk generated sites. This will decrese the quality of the Internet's content...
- page 24. AI should be used to generate a personalized study plan. At EDPuzzle we should focus on gathering student data so we can tailor the content to their needs.
- page 28. IDP (Intelligent Data Processing) is an industry that will grow a lot. It's based on extracting data from contracts, reports, charts...
