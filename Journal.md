# 📝 Journal

## TODO
- Write scaffolding script ✅
- Customize Logo Section ✅


## Commands

```bash
sudo apt install pngquant # compress png images in command line
find . -type f -name "*.png" -exec pngquant --quality=65-80 --ext .png --force {} \;

tree -L 1 # Displays current folder without recursion
├── cronjobs
├── education
├── open_source
├── projects
└── scripts

pip3 uninstall -y mkdocs mkdocs-get-deps mkdocs-material mkdocs-material-extensions
pip install -r requirements.txt --no-cache-dir

# VERY IMPORTANT NB: id_rsa.pub must be used for github ssh key to work so you should rerun the command to overwrite
# For some reason if you don't use the name id_rsa github ignores the ssh key
ssh-keygen -t rsa -b 4096 -C "$(whoami)@$(hostname)" -f ~/.ssh/id_rsa -N "" && cat ~/.ssh/id_rsa.pub

# --------------------------Make MKDocs Site Visible on Browser--------------------------------
# Use requirements.txt to avoid stress in download
mkdocs serve -a 0.0.0.0:8000

$ hostname -I
172.23.252.45 172.17.0.1 

# Access browser with IP directly
http://172.23.252.45:8000/portfolio/ 

# Create and Activate Virtual Environment
python3 -m venv env && source env/bin/activate

```

## Error Logs & Fixes

```bash

```

## Resource Findings
- https://pollunit.com/