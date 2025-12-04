# Nightingale.nvim

![Nightingale Theme](./preview.jpg)

A Neovim theme ported from the Nightingale VS Code theme, featuring warm tones and excellent readability for long coding sessions. Available in both dark and light variants.

## ✨ Features

- 🎨 **Two Variants:** Dark (Nightingale) and Light (Lightingale)
- 🌳 **Enhanced TreeSitter:** Full semantic highlighting with JSX/TSX support
- 🔍 **LSP Semantic Tokens:** 26+ semantic token types and modifiers
- 🔌 **27+ Plugin Integrations:** nvim-cmp, telescope, mini.nvim suite, bufferline, trouble, alpha, illuminate, and more
- 🖥️ **16 Terminal/Editor Themes:** Alacritty, Kitty, iTerm2, Helix, Fish, Lazygit, and more
- ⚡ **Performance:** Optimized for fast startup times
- 🎯 **Consistency:** Single color palette source across all integrations

## 🎨 Variants

### Nightingale (Dark)

The theme uses a carefully selected palette of warm, comfortable colors designed for long coding sessions:

- **Background:** Deep warm dark tones (`#202020`)
- **Foreground:** Soft cream/beige (`#ffffff` / `#DCD7BA`)
- **Syntax:** Greens (`#98BB6C`), Blues (`#85a8da`), Purples (`#a584c0`), and warm accents
- **UI:** Subtle grays and warm borders

### Lightingale (Light)

A light variant with inverted colors from the dark theme, maintaining the same visual harmony:

- **Background:** Soft light gray (`#dfdfdf`)
- **Foreground:** Very dark gray for excellent contrast
- **Syntax:** Darkened, saturated colors optimized for light backgrounds
- **UI:** Clean, comfortable interface perfect for bright environments

## 📦 Requirements

- Neovim >= 0.8.0
- `termguicolors` enabled

## 📥 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "xeind/nightingale.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nightingale").setup({
            transparent = false, -- set to true for transparent background
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
        require("nightingale").setup()
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
require("nightingale").setup()
vim.cmd("colorscheme nightingale")
```

## 🚀 Usage

### Basic Usage

```lua
-- Dark theme
vim.cmd("colorscheme nightingale")

-- Light theme
vim.cmd("colorscheme lightingale")
```

### Quick Toggle Between Variants

```lua
-- Switch to dark theme
require('nightingale').load('nightingale')

-- Switch to light theme
require('nightingale').load('lightingale')

-- Keybindings example
vim.keymap.set('n', '<leader>td', function()
    require('nightingale').load('nightingale')
end, { desc = 'Dark theme' })

vim.keymap.set('n', '<leader>tl', function()
    require('nightingale').load('lightingale')
end, { desc = 'Light theme' })
```

## ⚙️ Configuration

Default configuration (no need to call setup if you're okay with defaults):

```lua
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

vim.cmd("colorscheme nightingale")
```

### Customization Examples

```lua
require('nightingale').setup({
    -- Enable transparent background
    transparent = true,

    -- Customize styles
    commentStyle = { italic = true },
    functionStyle = { italic = true },
    keywordStyle = { italic = true, bold = true },
    numberStyle = { italic = true },

    -- Dim inactive windows
    dimInactive = true,

    -- Custom highlight overrides
    overrides = function(colors)
        local theme = colors.theme
        return {
            LineNr = { fg = theme.ui.fg_dim, bold = true },
            CursorLineNr = { fg = theme.diag.warning, bold = true },
            TelescopeBorder = { fg = theme.ui.float.fg_border },
        }
    end,
})
```

# All extras use the same color palette for perfect consistency across your entire development environment.

📖 **[View detailed installation guide →](./EXTRAS.md)**

## 🎨 Color Palette

### Core Colors

```lua
-- Syntax
green   = "#98BB6C"  -- Strings, success
blue    = "#85a8da"  -- Functions, primary
cyan    = "#7cd0bf"  -- Types, constants
purple  = "#a584c0"  -- Keywords, control flow
orange  = "#f5a284"  -- Constants, numbers
red     = "#ee5d43"  -- Errors, warnings
yellow  = "#E6C384"  -- Identifiers, parameters

-- UI
fg      = "#ffffff"  -- Main foreground
fg2     = "#DCD7BA"  -- Secondary foreground
bg      = "#202020"  -- Main background
gray    = "#727169"  -- Comments, disabled text
```

### Semantic Mappings

- **Strings/Success:** Green (`#98BB6C`)
- **Functions:** Blue (`#85a8da`)
- **Types:** Cyan (`#7cd0bf`)
- **Keywords:** Purple (`#a584c0`)
- **Constants:** Orange (`#f5a284`)
- **Errors:** Red (`#ee5d43`)
- **Parameters:** Yellow (`#E6C384`)
- **Comments:** Gray (`#727169`)

## 🆚 Comparison with Other Themes

| Feature               | Nightingale       | TokyoNight    | Kanagawa             |
| --------------------- | ----------------- | ------------- | -------------------- |
| **Variants**          | 2 (Dark/Light)    | 4 variants    | 3 variants           |
| **Plugin Highlights** | 540+ groups       | 600+ groups   | 400+ groups          |
| **Supported Plugins** | 27+ plugins       | 58 plugins    | 20+ plugins          |
| **Terminal Themes**   | 16 extras         | 46 extras     | 21 extras            |
| **LSP Tokens**        | 26+ tokens        | Full coverage | 20+ tokens           |
| **Color Philosophy**  | Warm, comfortable | Cool, vibrant | Traditional Japanese |
| **Architecture**      | Monolithic        | Modular       | Monolithic           |

**Nightingale's Strength:** Quality over quantity - comprehensive support for the most popular plugins with excellent color consistency.

## 🛣️ Roadmap

### Current Focus

- ✅ Enhanced LSP semantic tokens
- ✅ Full JSX/TSX support
- ✅ 16 terminal/editor themes
- ✅ 27+ plugin integrations
- ✅ Documentation improvements

### Planned Features

- 🔍 lspsaga support (enhanced LSP UI)
- 🎨 More terminal themes (gitui, btop, delta)
- 🤖 Automated extra generation system (future)

## 🙏 Acknowledgments

- Original [Nightingale VS Code Theme](https://marketplace.visualstudio.com/items?itemName=bfrangi.vscode-nightingale-theme) by bfrangi
- Theme structure inspired by [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- Plugin integration patterns from [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

## 📄 License

MIT
