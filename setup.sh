#!/bin/bash

# ==============================================================================
# Script: setup.sh
# Purpose: Set up core infrastructure, environment configs, and project scaffolding
# ==============================================================================

# ------------------------------------------------------------------------------
# Create core infrastructure and configuration files
# ------------------------------------------------------------------------------
touch Journal.md


mkdir -p static templates docs \
      docs/assets/images \
      docs/assets/javascripts \
      docs/assets/stylesheets \
      docs/overrides/partials

touch docs/architecture.md \
      docs/changelog.md \
      docs/contact.md \
      docs/contributing.md \
      docs/features.md

# ------------------------------------------------------------------------------
# Generate example environment configuration
# ------------------------------------------------------------------------------
cat <<EOF > docs/assets/javascripts/extra.js
// ----------------------- Certifications Page -----------------------
// ------- Modal for Certifications -------
const modal = document.getElementById('imgModal');
const modalImg = document.getElementById('modalImg');

// Add click listeners to all images
document.querySelectorAll('.image-grid img').forEach(img => {
img.addEventListener('click', () => {
    modal.style.display = 'block';
    modalImg.src = img.src;
    modalImg.alt = img.alt;
});
});

// Close modal when clicking outside the image
modal.addEventListener('click', e => {
if (e.target === modal) {
    modal.style.display = 'none';
}
});

EOF

# ------------------------------------------------------------------------------
cat <<EOF > docs/assets/stylesheets/extra.css
/* --------------- Header Social Icons ----------------- */
.social-icons {
  display: flex;
  justify-content: center;
  gap: 1rem;
}

.social-icons a {
  font-size: 1.5rem;
  color: white;
  transition: transform 0.2s ease;
}

.social-icons a:hover {
  transform: scale(1.2);
  color: #ffd700;
}

.social-icons .custom-icon {
  width: 1.5rem;
  height: 1.5rem;
  filter: invert(100%);
  transition: transform 0.2s ease;
}

.social-icons .custom-icon:hover {
  transform: scale(1.2);
  filter: invert(80%);
}

/* --------------- Certifications Page ----------------- */

details {
  margin-bottom: 1em;
}

summary {
  cursor: pointer;
  font-weight: bold;
  font-size: 1.1em;
}

.image-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  justify-content: flex-start;
}

.image-grid img {
  flex: 1 1 calc(33.333% - 10px);
  max-width: calc(33.333% - 10px);
  height: auto;
  border-radius: 6px;
  object-fit: cover;
  cursor: zoom-in;
  transition: transform 0.2s;
}

.image-grid img:hover {
  transform: scale(1.03);
}

/* Modal styles */
#imgModal {
  display: none;
  position: fixed;
  z-index: 1000;
  padding-top: 60px;
  left: 0; top: 0;
  width: 100%; height: 100%;
  overflow: auto;
  background-color: rgba(0,0,0,0.8);
}

#imgModal img {
  margin: auto;
  display: block;
  max-width: 90%;
  max-height: 80vh;
  border-radius: 8px;
}

#imgModal .closeBtn {
  position: absolute;
  top: 20px; right: 35px;
  color: white;
  font-size: 40px;
  font-weight: bold;
  cursor: pointer;
}

@media (max-width: 768px) {
  .image-grid img {
    flex: 1 1 calc(50% - 10px);
    max-width: calc(50% - 10px);
  }
}

@media (max-width: 480px) {
  .image-grid img {
    flex: 1 1 100%;
    max-width: 100%;
  }
}

EOF

# ------------------------------------------------------------------------------
# Create missing project files
# ------------------------------------------------------------------------------
touch shared/config/settings.py \
      shared/db/connection.py \
      shared/utils/fetch_request_with_error_handling.py \
      tests/movies/test_tasks.py

# ------------------------------------------------------------------------------
# Create and reorganize test folder structure
# ------------------------------------------------------------------------------
mkdir -p tests/unit \
         tests/integration/base \
         tests/integration/movies \
         tests/e2e \
         tests/system

mv tests/base tests/unit
mv tests/movies tests/unit

# Add __init__.py files for test modules
find tests -type d -exec touch {}/__init__.py \;

# ------------------------------------------------------------------------------
# Set up Python virtual environment and install dependencies
# ------------------------------------------------------------------------------
python3 -m venv env 
source env/bin/activate

pip install fastapi[standard] flake8 "celery[redis]" coverage gunicorn pymongo psycopg2-binary pytest-cov python-dotenv SQLAlchemy pydantic-settings alembic asyncpg beanie motor mkdocs-material
pip freeze > requirements.txt

# ------------------------------------------------------------------------------
# Initialize MkDocs documentation structure
# ------------------------------------------------------------------------------
mkdocs new docs 
mkdir -p docs/docs/assets/images

touch docs/docs/architecture.md \
      docs/docs/changelog.md \
      docs/docs/contact.md \
      docs/docs/contributing.md \
      docs/docs/features.md

curl -o docs/docs/assets/images/logo.png https://e7.pngegg.com/pngimages/574/377/png-clipart-logo-retro-bar-design-text-trademark.png
mkdocs build -f docs/mkdocs.yml