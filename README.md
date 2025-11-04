# Nightingale.nvim

![Nightingale Theme](./preview.jpg)

A Neovim theme ported from the Nightingale VS Code theme, featuring warm tones and excellent readability for long coding sessions. Available in both dark and light variants.

## Variants

### Nightingale (Dark)

The theme uses a carefully selected palette of warm, comfortable colors designed for long coding sessions:

- Background: Deep warm dark tones (`#202020`)
- Foreground: Soft cream/beige
- Syntax: Greens, blues, purples, and warm accent colors
- UI: Subtle grays and warm borders

### Lightingale (Light)

A light variant with inverted colors from the dark theme, maintaining the same visual harmony:

- Background: Soft light gray (`#dfdfdf`)
- Foreground: Very dark gray for excellent contrast
- Syntax: Darkened, saturated colors optimized for light backgrounds
- UI: Clean, comfortable interface perfect for bright environments

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

### Dark Theme (Nightingale)

```vim
colorscheme nightingale
```

```lua
vim.cmd("colorscheme nightingale")
```

### Light Theme (Lightingale)

```vim
colorscheme lightingale
```

```lua
vim.cmd("colorscheme lightingale")
```

### Switching via Lua Setup

```lua
require("nightingale").setup({
    theme = "lightingale",  -- or "nightingale" for dark
})
vim.cmd("colorscheme lightingale")
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
    theme = "nightingale",       -- "nightingale" (dark) or "lightingale" (light)
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = {
            nightingale = {},    -- dark theme overrides
            lightingale = {}     -- light theme overrides
        },
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
    -- Use light theme variant
    theme = "lightingale",

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

### Toggle Between Light and Dark

```lua
-- Switch to dark theme
require('nightingale').load('nightingale')

-- Switch to light theme
require('nightingale').load('lightingale')
```

You can bind these to keymaps for easy theme switching:

```lua
vim.keymap.set('n', '<leader>td', function()
    require('nightingale').load('nightingale')
end, { desc = 'Dark theme' })

vim.keymap.set('n', '<leader>tl', function()
    require('nightingale').load('lightingale')
end, { desc = 'Light theme' })
```

## Acknowledgments

- Original [Nightingale VS Code Theme](https://marketplace.visualstudio.com/items?itemName=bfrangi.vscode-nightingale-theme) by bfrangi
- Theme structure inspired by [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)

## License

MIT
