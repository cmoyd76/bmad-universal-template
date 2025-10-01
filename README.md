# BMAD Universal Template 🚀

This is a **project starter template** that integrates the **[BMAD Method](https://github.com/bmad-code-org/BMAD-METHOD)** directly into your development workflow.

---

## ⚡ Quick Start (TL;DR)

1. **Create a new repo** using this template (GitHub → “Use this template”).
2. **Open in VS Code** → **Dev Containers: Reopen in Container** → wait for `✅ BMAD bootstrap complete.`
3. **Enable slash commands**:
   - Copy `.vscode/copilot-commands.code-snippets` into your **global snippets** (`Ctrl/Cmd+Shift+P → Configure User Snippets`).
4. In **Copilot Chat**, type:

/analyst (then hit Tab)

and give it your project idea.

🎉 You’ll get 10 ideas → clustered → 2 picked → 3 tiny next steps.

---

## ✨ Features

- 🎭 **BMAD Agents** — Analyst, PM, Architect, SM, PO, POSM, Platform Engineer, Design Architect, Dev
Prewired with prompts & checklists.
- ⚡ **Slash Commands in Copilot Chat**
(`/analyst`, `/pm`, `/architect`, …) for role-based interactions.
- 🛠️ **Devcontainers** (Docker-based)
Ready-to-go setup, installs BMAD if missing.
- 🖥️ **Frontend**: Angular 20+ or Vue 3 with Tailwind + Preline (light & dark mode).
- ⚙️ **Backend**: FastAPI (Python) with Alembic migrations.
- 📱 **Mobile**: Flutter with native iOS (Cupertino) + Android (Material 3).
- 🗄️ **Databases**: Postgres (web) or Supabase (mobile default).
- 🔄 **Docs**: PRD + Architecture stubs, linked in `docs/index.md`.
- 🤝 **Copilot Instructions** (`.ai/copilot-instructions.md`) to guide Copilot’s behavior.

---

## 🛠️ Getting Started

### 1. Use this template
Click **Use this template** (top right) in GitHub and create a new repo for your project.

### 2. Clone your new repo
```bash
git clone https://github.com/<you>/<your-new-project>.git
cd <your-new-project>
```

### 3. Open in VS Code + Dev Container

    Open the folder in VS Code.

    Command Palette → Dev Containers: Reopen in Container.

    Wait for build. You should see:

    ✅ BMAD bootstrap complete.


### 4. Install BMAD

    On first open, the devcontainer will automatically run the BMAD installer if BMAD assets are missing.

    After that, BMAD will not reinstall every time you open the container.

If you ever need to update BMAD manually:
```bash
npm run install:bmad
```
### or
```bash
npx bmad-method install
```
Then commit the changes:
```bash
git add -A
git commit -m "Update BMAD assets"
```
### ⚡ Enable BMAD Slash Commands in Copilot Chat

This repo ships with .vscode/copilot-commands.code-snippets.

To enable the /analyst, /pm, /architect, etc. macros in Copilot Chat:

   - Open .vscode/copilot-commands.code-snippets.

   - Copy its contents.

   - In VS Code press Ctrl/Cmd + Shift + P → Configure User Snippets → New Global Snippets file.

   - Paste the contents and save.

   - Restart VS Code.

Now you can type /analyst in Copilot Chat → hit Tab → the BMAD macro expands.
📂 Project Structure
```
├── .ai/ # Copilot + BMAD AI instructions
│ ├── copilot-instructions.md # Global instructions file for Copilot
│ └── prompts/ # Role-specific agent prompt files
│ ├── analyst-brainstorm.md
│ ├── pm-prd-review.md
│ ├── architect-check.md
│ ├── sm-story-draft.md
│ └── (other agent prompts as needed)
│
├── .vscode/
│ ├── copilot-commands.code-snippets # Slash command snippets (/analyst, /pm, etc.)
│ └── extensions.json # Recommended VS Code extensions
│
├── .devcontainer/
│ ├── devcontainer.json # Main Devcontainer config (installs BMAD if missing)
│ └── Dockerfile # Optional custom build (if not using prebuilt image)
│
├── bmad-agent/ # BMAD assets (installed by npx bmad-method install)
│
├── docs/ # BMAD-driven documentation
│ ├── index.md # Links to all docs
│ ├── prd.md # Product Requirements Document (stub on Day 1)
│ ├── architecture.md # Architecture Document (stub on Day 1)
│ └── (checklists/, frontend-architecture.md added later as needed)
│
├── scripts/
│ └── bmad-bootstrap.sh # Ensures docs/prompts exist on first run
│
└── README.md # Main repo instructions
```


### 📖 Workflow with BMAD

 - /analyst → Brainstorm project ideas, cluster them.

 - /pm → Turn chosen ideas into a PRD draft.

 - /architect → Validate/update Architecture doc.

 - /sm → Draft small, dev-ready stories.


### Installing BMAD
```bash
npm run install:bmad
```
# or
```bash
npx bmad-method install
```
Then commit your changes
```bash
git add -A
git commit -m "Update BMAD assets"
```

## ✅ Next Steps

- [ ] Fill in docs/prd.md and docs/architecture.md with BMAD agents.

- [ ] Add frontend/ (Angular 20+ or Vue 3) or api/ (FastAPI + Alembic) folders when ready.

- [ ] Commit & push regularly.

- [ ] Update BMAD when new releases drop.

## 🐛 Troubleshooting
🔹 /analyst (or /pm, /architect) doesn’t expand

- [ ] Did you copy .vscode/copilot-commands.code-snippets into your global user snippets?

- [ ] In VS Code: Ctrl/Cmd + Shift + P → Configure User Snippets → pick your global file → paste the snippet JSON.

- [ ] Restart VS Code and try again.

🔹 BMAD didn’t install

Run inside the devcontainer:
```bash
npm run install:bmad || npx bmad-method install
```
Commit changes after install:

```bash
git add -A && git commit -m "Install BMAD"
```

### Devcontainer build is slow

- First build will always be slower (images + cache warm-up).

    Subsequent opens should be fast.

    If still slow, check the container log:

        Ctrl/Cmd + Shift + P → Dev Containers: Show Container Log.

        If delays are in postCreateCommand, comment out steps in scripts/bmad-bootstrap.sh to isolate.

- Ensure you have Docker resources (4 CPUs, 8GB+ RAM).

### Copilot Chat can’t find .ai/prompts/*

- Confirm you opened the repo root in VS Code, not a single subfolder.

- Run ls .ai/prompts in the terminal — the prompt files should exist.

- If missing, rerun npm run install:bmad.

📄 Copilot Commands Snippets

This repo ships with ready-to-use slash command snippets for Copilot Chat.
Place this JSON in your global snippets (see “Enable BMAD Slash Commands” above).
