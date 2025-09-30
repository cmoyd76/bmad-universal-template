#!/usr/bin/env bash
set -euo pipefail
mkdir -p .ai/prompts docs/checklists
# If files missing, create minimal helpful stubs
[ -f docs/index.md ] || cat > docs/index.md << 'EOF'
# Project Docs
- [PRD](prd.md)
- [Architecture](architecture.md)
- [Checklists](checklists/)
EOF
[ -f .ai/copilot-instructions.md ] || cat > .ai/copilot-instructions.md << 'EOF'
# BMAD Copilot Instructions (Project)
- FE: Angular 20+ / Vue 3 + Tailwind + Preline, light/dark.
- BE: FastAPI (Python). DB: Postgres or Supabase. Migrations: Alembic.
- Mobile: Flutter — **Cupertino on iOS**, **Material 3 on Android**.
- Dev: Docker + Devcontainers. Each service may have its own Dockerfile and devcontainer later.
Use @workspace. Cite file names (PRD, Architecture). Ask clarifying Qs if anything conflicts.
EOF
# Seed prompt macros if missing
for f in analyst-brainstorm.md deep-research-prompt.md pm-prd-review.md architect-check.md sm-story-draft.md; do
if [ ! -f ".ai/prompts/$f" ]; then
echo "Stub for $f. Customize me later." > ".ai/prompts/$f"
fi
done
printf "\n✅ BMAD bootstrap complete.\n"
