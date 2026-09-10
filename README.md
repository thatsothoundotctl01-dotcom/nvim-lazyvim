# 💤 Neovim 

A clean and modern Neovim configuration based on [LazyVim](https://www.lazyvim.org/).

Designed to make coding faster and more comfortable — with a polished UI, curated plugins, and a smooth day-to-day workflow.


## ✨ Features

- ⚡ **Fast startup** with lazy-loaded plugins
- 🗂️ File explorer, fuzzy search, and search/replace tools
- 🧠 Built-in **LSP** support — completion, diagnostics, code actions
- 🎨 Beautiful, cohesive theme and UI
- 🔧 Simple, well-organized structure for easy customization

---

## 📋 Requirements

| Requirement | Notes |
|---|---|
| **Neovim 0.9+** | Core editor |
| **Git** | For cloning and plugin management |
| **A Nerd Font** | Recommended: `JetBrainsMono Nerd Font` or `FiraCode Nerd Font` |
| **ripgrep, fd, lazygit, Node.js** | Optional — enables extra plugin features |

---

## 🚀 Installation

### 1. Install Neovim

**Ubuntu**
```bash
sudo apt update
sudo apt install neovim git
```

**Arch Linux**
```bash
sudo pacman -S neovim git
```

### 2. Install a Nerd Font

Download one of the following and set it as your terminal font:

- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)
- [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)
- [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)

### 3. Back up your existing config *(if any)*

```bash
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null
mv ~/.local/state/nvim ~/.local/state/nvim.bak 2>/dev/null
mv ~/.cache/nvim ~/.cache/nvim.bak 2>/dev/null
```

### 4. Clone this config

```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git```

### 5. Launch Neovim

```bash
nvim
```

LazyVim will automatically install plugins and dependencies on first launch. Wait for the process to finish, then restart Neovim.

---

## 🧭 Recommended Commands

| Command | Description |
|---|---|
| `:Lazy` | Open the plugin manager |
| `:Mason` | Install LSPs, linters, and formatters |
| `:checkhealth` | Diagnose your editor setup |
| `:Telescope find_files` | Search files in project |
| `:Telescope live_grep` | Search text across project |
| `:Oil` | Open the file explorer |

---

## ⌨️ Default Keybindings

| Keybinding | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | List buffers |
| `<leader>e` | Toggle file explorer |
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<leader>h` | Open help |

---

## 🛠️ Customization

All custom configuration lives in a few key files:

```
lua/
├── config/
│   ├── options.lua   # Editor options
│   └── keymaps.lua   # Custom keybindings
└── plugins/          # Plugin specs
```

After making changes, sync your plugins:

```
:Lazy sync
```

---

## 🩺 Troubleshooting

If something isn't working:

```bash
nvim
:checkhealth
:Lazy
```

**Common fixes:**
- Reinstall missing dependencies
- Update Neovim to the latest version
- Confirm your Nerd Font is installed and set in your terminal
- Restart the editor after plugin installs

---
