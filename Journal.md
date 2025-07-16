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
- Write scaffolding script [1hr] [16/07/2025] ✅ 
- Customize Logo Section [5hrs] [16/07/2025] ✅

---

<details>
<summary>💻 Commands</summary>

```bash
# Create & activate virtual environment
python3 -m venv env && source env/bin/activate

# Print current directory file structure
tree -L 1

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