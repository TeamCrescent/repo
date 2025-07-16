#!/bin/bash

# ==============================================================================
# Script: setup.sh
# Purpose: Set up core infrastructure, environment configs, and project scaffolding
# ==============================================================================

# ------------------------------------------------------------------------------
# Create core infrastructure and configuration files
# ------------------------------------------------------------------------------
python3 -m venv env 
source env/bin/activate

pip3 install mkdocs-material==9.6.15
mkdocs new portfolio

cd portfolio

mkdir -p docs/assets/images \
      docs/assets/javascripts \
      docs/assets/stylesheets \
      docs/overrides/partials \
      .github/workflows

curl -o docs/assets/images/logo.svg https://cdn.jsdelivr.net/npm/simple-icons@v11/icons/stockx.svg

touch docs/assets/javascripts/extra.js \
      docs/assets/stylesheets/extra.css \
      docs/overrides/partials/logo.html \
      docs/overrides/main.html \
      docs/articles.md \
      docs/certifications.md \
      docs/contributions.md \
      docs/projects.md \
      .github/workflows/deploy.yml

# ------------------------------------------------------------------------------
# Generate example environment configuration
# ------------------------------------------------------------------------------
cat <<EOF > Journal.md
# 📝 Journal

## 🧭 Table of Contents
- ✅ [TODO](#todo)
- 💻 [Commands](#commands)
- 🐞 [Error Logs & Fixes](#error-logs--fixes)
- 🔗 [Resource Findings](#resource-findings)
- 🧠 [Notes & Learnings](#notes--learnings)

---

## ✅ TODO
- Placeholder Task [Start-End:Duration] [Date]

---

<details>
<summary>💻 Commands</summary>

```bash
# Create & activate virtual environment
python3 -m venv env && source env/bin/activate

# Print current directory file structure
tree -L 1
```

</details>

---

<details>
<summary>🐞 Error Logs & Fixes</summary>

```bash
# Error: ModuleNotFoundError: No module named 'requests'
# Fix:
pip install requests

# Error: EADDRINUSE: address already in use
# Fix:
kill -9 $(lsof -t -i:3000)
```

</details>

---

## 🔗 Resource Findings
- [ChatGPT](https://chatgpt.com/)
- [Poll Unit](https://pollunit.com/en)

---

## 🧠 Notes and Learnings
- Markdown supports collapsible sections using `<details>`
- Use `kill -9 $(lsof -t -i:<port>)` to free up ports

---

### 📅 1900-01-01

**Progress:** Started structuring the project journal  
**Focus:** Setup, notes, task tracking, and tooling
EOF

# ------------------------------------------------------------------------------
cat <<EOF > .gitignore
env
site

EOF

mkdocs build 