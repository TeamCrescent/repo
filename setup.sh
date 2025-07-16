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

## TODO
- Placeholder for future tasks

## Commands

```bash

```

## Error Logs & Fixes

```bash

```

## Resource Findings
- https://

EOF

# ------------------------------------------------------------------------------
cat <<EOF > .gitignore
env
site

EOF

mkdocs build 