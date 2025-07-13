#!/bin/bash

# ==============================================================================
# Script: setup.sh
# Purpose: Set up core infrastructure, environment configs, and project scaffolding
# ==============================================================================

# ------------------------------------------------------------------------------
# Create core infrastructure and configuration files
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Generate example environment configuration
# ------------------------------------------------------------------------------
cat <<EOF > docs/assets/javascripts/extra.js

EOF

# ------------------------------------------------------------------------------
cat <<EOF > docs/assets/stylesheets/extra.css

EOF

curl -o docs/docs/assets/images/logo.png https://e7.pngegg.com/pngimages/574/377/png-clipart-logo-retro-bar-design-text-trademark.png
mkdocs build -f docs/mkdocs.yml