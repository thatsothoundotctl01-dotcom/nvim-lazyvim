# nvim-lazyvim 
A clean and modern Neovim configuration based on LazyVim.

This setup is designed to make coding faster and more comfortable with a nice UI, useful plugins, and a smooth development workflow.e

![Neovim setup preview](https://kommodo.ai/i/moKMgocDNhPe4ox4yZEz)

## Features

- LazyVim base configuration
- Fast startup with lazy plugin loading
- File explorer, fuzzy search, and search/replace tools
- LSP support for code completion and diagnostics
- Beautiful theme and UI
- Easy customization for your own workflow

## Requirements

Before you start, make sure you have:

- Neovim 0.9+ installed
- Git installed
- A Nerd Font installed (recommended: JetBrains Mono or FiraCode)
- Optional: ripgrep, fd, lazygit, and node.js for some plugins

## Install Neovim

### Ubuntu / Debian

```bash
sudo apt update
sudo apt install neovim git
```

### Arch Linux

```bash
sudo pacman -S neovim git
```

## Install a Nerd Font

Download and install a Nerd Font such as:

- JetBrainsMono Nerd Font
- FiraCode Nerd Font
- CaskaydiaCove Nerd Font

Then set it in your terminal app.

## Setup LazyVim

1. Back up your current Neovim config if you already have one:

```bash
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null
mv ~/.local/state/nvim ~/.local/state/nvim.bak 2>/dev/null
mv ~/.cache/nvim ~/.cache/nvim.bak 2>/dev/null
```

2. Clone this repository as your Neovim config:

```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

If this project is already in your local folder, you can also copy the config into `~/.config/nvim`.

3. Open Neovim:

```bash
nvim
```

4. LazyVim will automatically install plugins and dependencies.

5. Wait until the installation finishes, then restart Neovim.

## Recommended commands

Inside Neovim:

- `:Lazy` - open Lazy plugin manager
- `:Mason` - install LSPs and formatters
- `:checkhealth` - check your editor setup
- `:Telescope find_files` - search files
- `:Telescope live_grep` - search text in project
- `:Oil` - file explorer

## Useful default keybindings

- `<leader>ff` - find files
- `<leader>fg` - live grep
- `<leader>fb` - buffers
- `<leader>e` - file explorer
- `<leader>w` - save
- `<leader>q` - quit
- `<leader>h` - help

## Customizing the config

Edit files inside the config folder such as:

- `lua/config/options.lua`
- `lua/config/keymaps.lua`
- `lua/plugins/`

To add your own plugins or change settings, edit these files and reload Neovim with:

```bash
:Lazy sync
```

## Troubleshooting

If something does not work:

```bash
nvim
:checkhealth
:Lazy
```

Common fixes:

- Reinstall missing dependencies
- Update Neovim
- Check if your font is installed
- Reopen the editor after plugin install


## Notes

This repository is a starter setup for a powerful Neovim environment using LazyVim. You can customize it to match your workflow as you learn more about Neovim.
