# 🌠 zeph's neovim config

This is my VSCode-inspired **Neovim** setup — it's meant to be pretty simple, while still being fast, pretty, and absolutely opinionated to the very core for my development workflow.

> ⚙️ Built with [lazy.nvim](https://github.com/folke/lazy.nvim), Telescope, LSP, Codeium, and so many more amazing plugins.

---

## ✨ Features

- 🎨 **Pretty UI**: [tokyonight.nvim](https://github.com/folke/tokyonight.nvim), [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- 📁 **File explorer**: [Telescope file browser](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- 🔍 **Fuzzy finding**: Project-wide search with Telescope
- 💡 **LSP support**: Rust, TypeScript, React (via tsserver), Ruby
- 🤖 **AI completions** (*because we love vibe-coding /s*): [Codeium](https://codeium.com/)
- ⌨️ **VSCode-style keybindings**: Familiar and efficient
- 🔧 Modular config: Easy to extend and maintain

---

## 📦 Plugin Highlights

| Plugin                          | Purpose                         |
|----------------------------------|----------------------------------|
| `lazy.nvim`                     | Plugin manager                  |
| `tokyonight.nvim`               | Theme                           |
| `lualine.nvim`                  | Statusline                      |
| `telescope.nvim`                | Fuzzy finder                    |
| `telescope-file-browser.nvim`   | File browser                    |
| `nvim-treesitter`               | Rich syntax highlighting        |
| `mason.nvim` + `lspconfig`      | LSP server install & config     |
| `nvim-web-devicons`             | File icons                      |
| `blink.cmp`                     | Modern code completions         |

---

## 🧰 Setup Instructions

1. **Install Neovim 0.9+**
2. **Clone this repo**

```bash
git clone https://github.com/ZephyrCodesStuff/nvim ~/.config/nvim
```

3. **Start Neovim** — it will auto-install plugins via `lazy.nvim`.

```bash
nvim
```

---

## 🧠 Keybindings

| Action           | Key           |
|------------------|---------------|
| File browser     | `CTRL + B`    |
| File search      | `CTRL + P`    |
| Project search   | `CTRL + F`    |
| AI suggestion    | `Ctrl-Space`  |
| Format buffer    | `Leader + =`  |

---

## 📄 Supported Filetypes & Languages

This config includes Treesitter syntax + LSP support for:

- Rust (`rust_analyzer`)
- TypeScript / React (`tsserver`)
- Ruby (`solargraph`)
- Markdown (`marksman`)
- Dockerfile (`dockerls`)
- TOML (`taplo`)
- YAML (`yamlls`)
- Shell / `.env` (`bashls`)
- `.gitignore` (Treesitter syntax)

---

## 🗒️ Notes

- Uses a [Nerd Font](https://www.nerdfonts.com/) for icons.
- Terminal support: works great in Kitty, Alacritty, WezTerm, etc.
- Tested on Arch Linux only because other OSes are irrelevant
  - Though it really should work anywhere

---

## 🤝 Contributions

You should really fork this and modify it to your likings, since this config is tailored to *my* needs particularly.

---

## 📜 License

MIT © [zeph](https://github.com/ZephyrCodesStuff)

