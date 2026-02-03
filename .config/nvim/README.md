# Neovim Configuration

A modern Neovim configuration using native LSP (Neovim 0.11+), lazy.nvim plugin manager, and a curated set of plugins for an efficient development experience.

## File Structure

```
~/.config/nvim/
├── init.lua                 # Entry point - loads config module
├── lazy-lock.json           # Plugin version lockfile
├── .luarc.json              # Lua language server settings
├── .luacheckrc              # Luacheck linter settings
├── neoconf.json             # Project-local LSP settings
│
├── lsp/                     # Native LSP server configurations (Neovim 0.11+)
│   ├── lua_ls.lua           # Lua language server
│   ├── pyright.lua          # Python language server
│   ├── dockerls.lua         # Dockerfile language server
│   ├── ts_ls.lua            # TypeScript/JavaScript language server
│   └── marksman.lua         # Markdown language server
│
└── lua/
    ├── config/              # Core configuration
    │   ├── init.lua         # Lazy.nvim bootstrap & LSP enable
    │   ├── globals.lua      # Global variables (leader key)
    │   ├── options.lua      # Vim options (tabs, search, appearance)
    │   ├── keymaps.lua      # General keybindings
    │   └── autocmds.lua     # Autocommands (highlight on yank)
    │
    ├── plugins/             # Plugin specifications
    │   ├── init.lua         # Base plugins (neoconf, lazydev)
    │   ├── nvim-lspconfig.lua    # LSP configuration & diagnostic signs
    │   ├── mason.lua             # LSP/tool installer
    │   ├── mason-lspconfig.lua   # Mason + LSP integration
    │   ├── nvim-cmp.lua          # Autocompletion
    │   ├── lspsaga-nvim.lua      # Enhanced LSP UI
    │   ├── conform.lua           # Code formatting
    │   ├── nvim-lint.lua         # Linting
    │   ├── telescope.lua         # Fuzzy finder
    │   ├── nvim-treesitter.lua   # Syntax highlighting
    │   ├── nvim-ts-autotag.lua   # Auto close HTML tags
    │   ├── nvim-tree.lua         # File explorer
    │   ├── lualine-nvim.lua      # Status line
    │   ├── nightfox.lua          # Colorscheme
    │   ├── transparent-nvim.lua  # Transparent background
    │   ├── noice.lua             # UI improvements
    │   ├── which-key.lua         # Keybinding hints
    │   ├── comment.lua           # Code commenting
    │   ├── indent-blankline.lua  # Indentation guides
    │   ├── vim-illuminate.lua    # Highlight word under cursor
    │   ├── vim-highlightedyank.lua # Highlight yanked text
    │   └── tmux-navigator.lua    # Tmux pane navigation
    │
    └── util/
        └── lsp.lua          # LSP keymaps and on_attach function
```

## Configuration Details

### Core Config (`lua/config/`)

| File | Purpose |
|------|---------|
| `init.lua` | Bootstraps lazy.nvim, loads all config modules, sets up native LSP with `vim.lsp.enable()` |
| `globals.lua` | Sets leader key to `<Space>` |
| `options.lua` | Editor behavior: 2-space tabs, relative line numbers, smart search, persistent undo |
| `keymaps.lua` | General keybindings for navigation, splits, clipboard |
| `autocmds.lua` | Highlight yanked text |

### LSP Directory (`lsp/`)

Native Neovim 0.11+ LSP configuration. Each file exports a table with:
- `cmd` - Command to start the server
- `filetypes` - File types to attach to
- `root_markers` - Files that indicate project root
- `settings` - Server-specific settings

### Plugins (`lua/plugins/`)

| Plugin | Purpose |
|--------|---------|
| **lazydev.nvim** | Lua development support for Neovim config |
| **nvim-lspconfig** | LSP client configurations |
| **mason.nvim** | LSP/linter/formatter installer |
| **nvim-cmp** | Autocompletion engine |
| **lspsaga.nvim** | Enhanced LSP UI (hover, rename, code actions) |
| **conform.nvim** | Code formatting (stylua, black, prettier) |
| **nvim-lint** | Linting (luacheck, flake8, hadolint, eslint_d, markdownlint) |
| **telescope.nvim** | Fuzzy finder for files, grep, buffers |
| **nvim-treesitter** | Advanced syntax highlighting |
| **nvim-tree** | File explorer sidebar |
| **Comment.nvim** | Toggle code comments |
| **which-key.nvim** | Shows available keybindings |

---

## Keybindings

**Leader key: `<Space>`**

### General Navigation

| Keybinding | Mode | Action |
|------------|------|--------|
| `<C-h>` | Normal/Terminal | Navigate to left pane/tmux |
| `<C-j>` | Normal/Terminal | Navigate to bottom pane/tmux |
| `<C-k>` | Normal/Terminal | Navigate to top pane/tmux |
| `<C-l>` | Normal/Terminal | Navigate to right pane/tmux |

### Window Management

| Keybinding | Mode | Action |
|------------|------|--------|
| `<leader>sv` | Normal | Split window vertically |
| `<leader>sh` | Normal | Split window horizontally |
| `<leader>sm` | Normal | Toggle maximize current window |

### File Explorer (nvim-tree)

| Keybinding | Mode | Action |
|------------|------|--------|
| `<leader>f` | Normal | Toggle file tree |
| `<leader>m` | Normal | Focus file tree |

Inside nvim-tree:
| Key | Action |
|-----|--------|
| `<CR>` or `o` | Open file/directory |
| `a` | Create new file |
| `d` | Delete file |
| `r` | Rename file |
| `x` | Cut file |
| `c` | Copy file |
| `p` | Paste file |
| `q` | Close tree |

### Telescope (Fuzzy Finder)

| Keybinding | Mode | Action |
|------------|------|--------|
| `<leader>ff` | Normal | Find files |
| `<leader>fg` | Normal | Live grep (search in files) |
| `<leader>fb` | Normal | List open buffers |
| `<leader>fh` | Normal | Search help tags |
| `<leader>fk` | Normal | Search keymaps |
| `<leader>fa` | Normal | Open Telescope |

Inside Telescope:
| Key | Action |
|-----|--------|
| `<C-j>` | Move to next item |
| `<C-k>` | Move to previous item |
| `<CR>` | Select item |
| `<Esc>` | Close Telescope |

### LSP (Language Server)

| Keybinding | Mode | Action |
|------------|------|--------|
| `gf` | Normal | Find references (Lspsaga finder) |
| `gD` | Normal | Go to declaration |
| `gd` | Normal | Peek definition |
| `gi` | Normal | Go to implementation |
| `K` | Normal | Show hover documentation |
| `<leader>ca` | Normal | Code actions |
| `<leader>rn` | Normal | Rename symbol |
| `<leader>D` | Normal | Show line diagnostics |
| `<leader>d` | Normal | Show cursor diagnostics |
| `<leader>pd` | Normal | Previous diagnostic |
| `<leader>nd` | Normal | Next diagnostic |
| `<leader>lo` | Normal | Toggle outline (symbols) |
| `<leader>oi` | Normal | Organize imports (Python only) |

### Lspsaga Navigation

Inside Lspsaga windows:
| Key | Action |
|-----|--------|
| `<C-j>` | Scroll down in preview |
| `<C-k>` | Scroll up in preview |
| `<CR>` | Open/toggle item |
| `q` | Quit window |
| `s` | Open in vertical split (finder) |
| `i` | Open in horizontal split (finder) |

### Autocompletion (nvim-cmp)

| Keybinding | Mode | Action |
|------------|------|--------|
| `<C-j>` | Insert | Next suggestion |
| `<C-k>` | Insert | Previous suggestion |
| `<C-b>` | Insert | Scroll docs up |
| `<C-f>` | Insert | Scroll docs down |
| `<C-Space>` | Insert | Trigger completion |
| `<C-e>` | Insert | Close completion menu |
| `<CR>` | Insert | Confirm selection |

### Editing

| Keybinding | Mode | Action |
|------------|------|--------|
| `<` | Visual | Indent left (stays in visual mode) |
| `>` | Visual | Indent right (stays in visual mode) |
| `<C-/>` | Normal/Visual | Toggle comment |
| `gcc` | Normal | Toggle line comment |
| `gc` | Visual | Toggle comment on selection |

### Clipboard

| Keybinding | Mode | Action |
|------------|------|--------|
| `<C-c>` | Visual | Copy to system clipboard |
| `<C-v>` | Normal/Insert | Paste from system clipboard |

---

## Commands

### LSP Commands

| Command | Description |
|---------|-------------|
| `:LspInfo` | Show active LSP clients |
| `:LspStart` | Start LSP for current buffer |
| `:LspStop` | Stop LSP client |
| `:LspRestart` | Restart LSP client |

### Mason (Package Manager)

| Command | Description |
|---------|-------------|
| `:Mason` | Open Mason installer UI |
| `:MasonInstall <pkg>` | Install a package |
| `:MasonUninstall <pkg>` | Uninstall a package |
| `:MasonLog` | View Mason logs |

### Formatting (conform.nvim)

| Command | Description |
|---------|-------------|
| `:ConformInfo` | Show formatter info for current buffer |

Formatting happens automatically on save.

### Linting (nvim-lint)

Linting runs automatically on file save and read. Diagnostics appear in the sign column and can be viewed with `<leader>D`.

### Telescope

| Command | Description |
|---------|-------------|
| `:Telescope` | Open Telescope |
| `:Telescope find_files` | Find files |
| `:Telescope live_grep` | Search in files |
| `:Telescope buffers` | List buffers |
| `:Telescope help_tags` | Search help |

### Treesitter

| Command | Description |
|---------|-------------|
| `:TSUpdate` | Update all parsers |
| `:TSInstall <lang>` | Install a parser |
| `:TSInstallInfo` | Show installed parsers |

### Lazy (Plugin Manager)

| Command | Description |
|---------|-------------|
| `:Lazy` | Open Lazy plugin manager |
| `:Lazy sync` | Install/update/clean plugins |
| `:Lazy update` | Update plugins |
| `:Lazy clean` | Remove unused plugins |
| `:Lazy health` | Run health checks |

### Other

| Command | Description |
|---------|-------------|
| `:Neoconf` | Open project-local LSP settings |
| `:NvimTreeToggle` | Toggle file explorer |
| `:checkhealth` | Run Neovim health checks |
| `:checkhealth vim.lsp` | Check LSP health |

---

## Supported Languages

| Language | LSP | Formatter | Linter |
|----------|-----|-----------|--------|
| Lua | lua_ls | stylua | luacheck |
| Python | pyright | black | flake8 |
| TypeScript | ts_ls | prettier | eslint_d |
| JavaScript | ts_ls | prettier | eslint_d |
| Markdown | marksman | prettier | markdownlint |
| Dockerfile | dockerls | - | hadolint |
| JSON/YAML/HTML/CSS | - | prettier | - |

---

## Adding a New Language Server

1. Create `~/.config/nvim/lsp/<server_name>.lua`:
   ```lua
   return {
     cmd = { 'server-command' },
     filetypes = { 'filetype' },
     root_markers = { '.git', 'config.file' },
     settings = {},
   }
   ```

2. Add to `vim.lsp.enable()` in `lua/config/init.lua`:
   ```lua
   vim.lsp.enable({ 'lua_ls', 'pyright', 'dockerls', 'ts_ls', 'marksman', 'new_server' })
   ```

3. Add to Mason ensure_installed in `lua/plugins/mason-lspconfig.lua`

4. Install via `:Mason`

---

## Troubleshooting

- **LSP not starting:** Run `:checkhealth vim.lsp` and `:LspInfo`
- **Formatting not working:** Run `:ConformInfo` to check formatter status
- **Plugin issues:** Run `:Lazy health` and `:checkhealth`
- **Missing tools:** Open `:Mason` to install language servers, formatters, and linters
