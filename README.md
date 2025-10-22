# Nightingale.nvim

![Nightingale Theme](./preview.jpg)

A dark Neovim theme ported from the Nightingale VS Code theme, featuring warm tones and excellent readability for long coding sessions.

The theme uses a carefully selected palette of warm, comfortable colors designed for long coding sessions:

- Background: Deep warm dark tones
- Foreground: Soft cream/beige
- Syntax: Greens, blues, purples, and warm accent colors
- UI: Subtle grays and warm borders

## Features

- TreeSitter support
- LSP semantic highlighting
- Terminal colors support

## Requirements

- Neovim >= 0.8.0
- `termguicolors` enabled

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "xeind/nightingale.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nightingale").setup({
            transparent = true,
        })
        vim.cmd("colorscheme nightingale")
    end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    "xeind/nightingale.nvim",
    config = function()
        require("nightingale").setup({
            transparent = true,
        })
        vim.cmd("colorscheme nightingale")
    end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'xeind/nightingale.nvim'
```

Then in your config:

```lua
require("nightingale").setup({
    transparent = true,
})
vim.cmd("colorscheme nightingale")
```

## Usage

As simple as:

```vim
colorscheme nightingale
```

```lua
vim.cmd("colorscheme nightingale")
```

## Configuration

There is no need to call setup if you are okay with the defaults.

```lua
-- Default options:
require('nightingale').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = { italic = true },
    keywordStyle = { italic = true, bold = true },
    statementStyle = {},
    typeStyle = {},
    numberStyle = {},            -- disabled by default
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { nightingale = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
})

-- setup must be called before loading
vim.cmd("colorscheme nightingale")
```

### Style Customization Examples

```lua
require('nightingale').setup({
    -- Enable transparent background
    transparent = true,

    -- Enable italic numbers
    numberStyle = { italic = true },

    -- Disable all styling
    commentStyle = {},
    functionStyle = {},
    keywordStyle = {},

    -- Dim inactive windows
    dimInactive = true,

    -- Custom color overrides
    overrides = function(colors)
        local theme = colors.theme
        return {
            -- Make line numbers stand out more
            LineNr = { fg = theme.ui.fg_dim, bold = true },
            -- Custom diagnostic colors
            DiagnosticError = { fg = "#ff0000" },
        }
    end,
})
```

## Acknowledgments

- Original [Nightingale VS Code Theme](https://marketplace.visualstudio.com/items?itemName=bfrangi.vscode-nightingale-theme) by bfrangi
- Theme structure inspired by [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)

## License

MIT
