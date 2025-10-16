# nightingale.nvim

A dark Neovim theme ported from the Nightingale VS Code theme, featuring warm colors and excellent readability.

## Features

- Full TreeSitter support
- LSP semantic highlighting
- Popular plugin integrations (Telescope, NvimTree, neo-tree, GitSigns, and more)
- Consistent color palette
- Terminal colors support

## Requirements

- Neovim >= 0.8.0
- `termguicolors` enabled

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "yourusername/nightingale.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nightingale").setup()
        vim.cmd("colorscheme nightingale")
    end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    "yourusername/nightingale.nvim",
    config = function()
        require("nightingale").setup()
        vim.cmd("colorscheme nightingale")
    end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'yourusername/nightingale.nvim'
```

Then in your `init.vim` or `init.lua`:

```lua
lua << EOF
require("nightingale").setup()
vim.cmd("colorscheme nightingale")
EOF
```

## Usage

### Basic Setup

```lua
require("nightingale").setup()
vim.cmd("colorscheme nightingale")
```

### Configuration

```lua
require("nightingale").setup({
    compile = false,           -- Enable compile cache for faster loading
    transparent = false,       -- Disable background color
    dim_inactive = false,      -- Dim inactive windows
    styles = {
        comments = { italic = true },
        keywords = { italic = false },
        functions = {},
        variables = {},
    },
})
```

### Compile for Faster Load Times

Nightingale can pre-compute highlight groups for faster startup:

```lua
require("nightingale").setup({
    compile = true,
})
```

Or compile manually:

```lua
:lua require("nightingale").compile()
```

## Plugin Support

Nightingale includes highlight definitions for:

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [which-key](https://github.com/folke/which-key.nvim)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [leap.nvim](https://github.com/ggandor/leap.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- And more!

## Color Palette

The theme uses a carefully selected palette of warm, comfortable colors designed for long coding sessions:

- Background: Deep warm dark tones
- Foreground: Soft cream/beige
- Syntax: Greens, blues, purples, and warm accent colors
- UI: Subtle grays and warm borders

## Screenshots

(TODO: Add screenshots)

## Acknowledgments

- Original [Nightingale VS Code theme](https://marketplace.visualstudio.com/items?itemName=bfrangi.vscode-nightingale-theme)
- Inspired by [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) structure

## License

MIT
