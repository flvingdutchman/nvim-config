
# Neovim Config

Minimal Neovim setup focused on TypeScript / JavaScript development.

## Requirements

### Neovim

The configuration uses the modern Neovim LSP API (`vim.lsp.config` / `vim.lsp.enable`).

```bash
brew install neovim
```

Check:

```bash
nvim --version
```

---

### Git

Required by `lazy.nvim` and plugins.

```bash
brew install git
```

---

### ripgrep

Required for Telescope live grep (`<Space>fg`).

```bash
brew install ripgrep
```

Check:

```bash
rg --version
```

---

### Tree-sitter CLI

Required by `nvim-treesitter`.

```bash
brew install tree-sitter-cli
```

Check:

```bash
tree-sitter --version
```

---

### Node.js

Required for the TypeScript and ESLint language servers.

```bash
brew install node
```

Check:

```bash
node --version
npm --version
```

---

### TypeScript Language Server

```bash
npm install -g typescript typescript-language-server
```

Check:

```bash
typescript-language-server --version
tsc --version
```

For TypeScript projects, prefer having TypeScript installed locally as well:

```bash
npm install -D typescript
```

This allows the language server to use the TypeScript version belonging to the project.

---

### ESLint Language Server

```bash
npm install -g vscode-langservers-extracted
```

Check:

```bash
vscode-eslint-language-server --version
```

ESLint itself should normally be installed and configured by the project.

---

### Prettier

Prettier should preferably be installed per project:

```bash
npm install -D prettier
```

The configuration uses `conform.nvim` to run Prettier.

---

### Nerd Font

Required for file icons in Neo-tree.

Recommended:

```bash
brew install --cask font-jetbrains-mono-nerd-font
```

Then configure the terminal to use:

```text
JetBrainsMono Nerd Font
```

The font is configured in the terminal, not in Neovim.

---

## Plugins

The configuration uses `lazy.nvim` as the plugin manager.

Installed plugins include:

* `Mofiqul/vscode.nvim` — VS Code-like colorscheme
* `nvim-telescope/telescope.nvim` — fuzzy finder
* `nvim-treesitter/nvim-treesitter` — syntax parsing/highlighting
* `neovim/nvim-lspconfig` — LSP configurations
* `saghen/blink.cmp` — autocomplete
* `stevearc/conform.nvim` — formatting
* `lewis6991/gitsigns.nvim` — Git integration
* `nvim-neo-tree/neo-tree.nvim` — file explorer
* `nvim-tree/nvim-web-devicons` — file icons

---

# Keybindings

`<Leader>` is:

```text
Space
```

## Files & Search

| Key        | Action                                |
| ---------- | ------------------------------------- |
| `Space ff` | Find files                            |
| `Space fg` | Search text in project                |
| `Space e`  | Toggle Neo-tree / reveal current file |

## Window Navigation

| Key      | Action                      |
| -------- | --------------------------- |
| `Ctrl+h` | Move to window on the left  |
| `Ctrl+l` | Move to window on the right |
| `Ctrl+j` | Move to window below        |
| `Ctrl+k` | Move to window above        |

This makes moving between Neo-tree and the editor easy:

```text
Ctrl+h    Editor → Neo-tree
Ctrl+l    Neo-tree → Editor
```

## Window Resizing

| Key      | Action                  |
| -------- | ----------------------- |
| `Alt+←`  | Decrease window width   |
| `Alt+→`  | Increase window width   |
| `Alt+↑`  | Increase window height  |
| `Alt+↓`  | Decrease window height  |

Navigation and resizing keys also work from terminal mode (e.g. inside the Claude Code terminal).

## LSP

| Key        | Action                        |
| ---------- | ----------------------------- |
| `gd`       | Go to definition              |
| `gr`       | Find references via Telescope |
| `K`        | Show hover documentation      |
| `Space rn` | Rename symbol                 |
| `Space ca` | Code action                   |

## Diagnostics

| Key        | Action                         |
| ---------- | ------------------------------ |
| `]d`       | Next diagnostic                |
| `[d`       | Previous diagnostic            |
| `Space d`  | Show diagnostic details        |
| `Space dl` | Open diagnostics location list |

## Symbols

| Key        | Action                           |
| ---------- | -------------------------------- |
| `Space ds` | Find symbols in current document |
| `Space ws` | Find symbols in workspace        |

## Formatting

| Key       | Action              |
| --------- | ------------------- |
| `Space f` | Format current file |

Files are also automatically formatted on save.

## Git

| Key        | Action                   |
| ---------- | ------------------------ |
| `]c`       | Next Git hunk            |
| `[c`       | Previous Git hunk        |
| `Space gp` | Preview current Git hunk |
| `Space gb` | Git blame current line   |
| `Space gr` | Reset current Git hunk   |

**Note:** `Space gr` modifies the working tree by reverting the current hunk.

## Completion

| Key         | Action                     |
| ----------- | -------------------------- |
| `Tab`       | Select next completion     |
| `Shift+Tab` | Select previous completion |
| `Enter`     | Accept completion          |
| `Ctrl+e`    | Close completion menu      |

## General

| Key   | Action                    |
| ----- | ------------------------- |
| `Esc` | Clear search highlighting |

---

# Neo-tree

Useful keys while Neo-tree is focused:

| Key     | Action                         |
| ------- | ------------------------------ |
| `Enter` | Open file / directory          |
| `a`     | Add file or directory          |
| `d`     | Delete                         |
| `r`     | Rename                         |
| `y`     | Copy                           |
| `x`     | Cut                            |
| `p`     | Paste                          |
| `H`     | Toggle hidden / filtered items |
| `q`     | Close Neo-tree                 |

---

# Useful Commands

Check LSP configuration and attached servers:

```vim
:checkhealth vim.lsp
```

Check Tree-sitter:

```vim
:checkhealth nvim-treesitter
```

Update Tree-sitter parsers:

```vim
:TSUpdate
```

Open Lazy plugin manager:

```vim
:Lazy
```

Check LSP clients attached to the current buffer:

```vim
:lua vim.print(vim.lsp.get_clients({ bufnr = 0 }))
```

---

## Config Structure

```text
~/.config/nvim/
├── init.lua
└── lua/
    ├── config/
    │   ├── options.lua
    │   └── keymaps.lua
    └── plugins/
        ├── colorscheme.lua
        ├── completion.lua
        ├── filetree.lua
        ├── formatting.lua
        ├── git.lua
        ├── lsp.lua
        ├── telescope.lua
        └── treesitter.lua
```
