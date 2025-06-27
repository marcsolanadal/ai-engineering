# AI ENGINEERING
---

I've been taking notes with Obsidian for the past 3 years but my notes feel disconnected since I don't take the time to connect the ideas.
I want to try to simplify my setup using the cli as much as possible. This means that I'll be using my editor of choice (Helix) and git to handle notes.

Every source I consume will live in their own repository. If I start consuming many more AI books or talks I'll provably transition this repository to have all my AI related notes.

If In the future I need to have notes from other areas of knowledge I can always merge the notes into my main repository.

## 📖 How to get the book?

> The book is encrypted using AGE with my ssh dev key.

To decrypt the book use:

```sh
devenv tasks run decrypt:book
```

## Structure

My note-taking draws some of the zettlekasten elements that worked for me.

- `notes/`
  - `fleeting.md` -> Raw notes while consuming the book
  - `index.md` -> Index with links to all the notes
  - `atomic/` -> Atomic notes
