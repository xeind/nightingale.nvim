# Nightingale Extras

Nightingale provides **23 color schemes** for popular terminals, editors, and development tools. All themes use the same carefully crafted color palette for perfect consistency across your entire development environment.

Terminal/CLI extras (from `claude-code/` onward) are generated from `lua/nightingale/colors.lua` — the single source of truth — via `scripts/generate-extras`. See [Regenerating extras](#regenerating-extras) below.

## Table of Contents

- [Terminals](#terminals)
  - [Alacritty](#alacritty)
  - [Kitty](#kitty)
  - [WezTerm](#wezterm)
  - [iTerm2](#iterm2)
  - [Ghostty](#ghostty)
  - [Foot](#foot)
  - [Windows Terminal](#windows-terminal)
  - [Xresources](#xresources)
- [Editors & Tools](#editors--tools)
  - [Helix](#helix)
  - [OpenCode](#opencode)
  - [FZF](#fzf)
  - [Tmux](#tmux)
  - [Fish](#fish)
  - [Lazygit](#lazygit)
- [AI Coding CLIs & TUI Tools](#ai-coding-clis--tui-tools)
  - [Claude Code](#claude-code)
  - [Codex CLI](#codex-cli)
  - [Zellij](#zellij)
  - [Yazi](#yazi)
  - [GitUI](#gitui)
  - [Delta](#delta)
  - [Btop++](#btop)

## Terminals

### Alacritty

Cross-platform, GPU-accelerated terminal emulator.

**Installation:**

```bash
# Linux/macOS
mkdir -p ~/.config/alacritty/themes
cp extras/alacritty/nightingale.toml ~/.config/alacritty/themes/

# Add to your alacritty.toml:
[general]
import = ["~/.config/alacritty/themes/nightingale.toml"]
```

**Or inline in your config:**

```toml
# ~/.config/alacritty/alacritty.toml
# Copy the contents of extras/alacritty/nightingale.toml
```

### Kitty

Fast, GPU-based terminal emulator.

**Installation:**

```bash
# Linux/macOS
mkdir -p ~/.config/kitty/themes
cp extras/kitty/nightingale.conf ~/.config/kitty/themes/

# Add to your kitty.conf:
include ~/.config/kitty/themes/nightingale.conf
```

### WezTerm

GPU-accelerated cross-platform terminal emulator.

**Installation:**

```bash
# Linux/macOS
mkdir -p ~/.config/wezterm/colors
cp extras/wezterm/nightingale.lua ~/.config/wezterm/colors/
```

**Add to your `.wezterm.lua`:**

```lua
local wezterm = require 'wezterm'
local nightingale = require 'colors.nightingale'

return {
  colors = nightingale,
  -- or use color_scheme name if installed globally
  -- color_scheme = 'Nightingale',
}
```

### iTerm2

macOS terminal emulator.

**Installation:**

1. Open iTerm2
2. Go to **Preferences** → **Profiles** → **Colors**
3. Click **Color Presets** → **Import**
4. Select `extras/iterm/nightingale.itermcolors`
5. Select **Nightingale** from the Color Presets dropdown

### Ghostty

Fast, GPU-accelerated terminal emulator.

**Installation:**

```bash
# Linux/macOS
cp extras/ghostty/nightingale ~/.config/ghostty/themes/

# Add to your ghostty config:
theme = nightingale
```

### Foot

Lightweight Wayland terminal emulator.

**Installation:**

```bash
# Linux
mkdir -p ~/.config/foot/themes
cp extras/foot/nightingale.ini ~/.config/foot/themes/

# Add to your foot.ini:
include=~/.config/foot/themes/nightingale.ini
```

### Windows Terminal

Windows 11 modern terminal.

**Installation:**

1. Open Windows Terminal settings (Ctrl+,)
2. Click **Open JSON file** at the bottom left
3. Add the Nightingale scheme from `extras/windows-terminal/nightingale.json` to the `schemes` array
4. Set as default under **Profiles** → **Defaults** → **Appearance** → **Color scheme**

**Or via JSON:**

```json
{
  "schemes": [
    // Paste contents of extras/windows-terminal/nightingale.json here
  ],
  "profiles": {
    "defaults": {
      "colorScheme": "Nightingale"
    }
  }
}
```

### Xresources

X11 terminal configuration (xterm, urxvt, st, etc.).

**Installation:**

```bash
# Linux
cat extras/xresources/nightingale.Xresources >> ~/.Xresources
xrdb ~/.Xresources
```

**Or for specific terminal:**

```bash
# Create a separate file
cp extras/xresources/nightingale.Xresources ~/.Xresources.d/nightingale

# Include in your main .Xresources:
#include ".Xresources.d/nightingale"
```

## Editors & Tools

### Helix

Modern modal text editor.

**Installation:**

```bash
# Linux/macOS
mkdir -p ~/.config/helix/themes
cp extras/helix/nightingale.toml ~/.config/helix/themes/

# Set in your config.toml:
theme = "nightingale"
```

**Or via CLI:**

```bash
hx --config theme=nightingale
```

### OpenCode

AI-powered code editor.

**Installation:**

1. Open OpenCode settings
2. Navigate to **Themes** section
3. Click **Import Theme**
4. Select `extras/opencode/nightingale.json`

**Or manually:**

```bash
# Linux/macOS
mkdir -p ~/.config/opencode/themes
cp extras/opencode/nightingale.json ~/.config/opencode/themes/
```

The theme will appear in your theme selector as **Nightingale**.

### FZF

Command-line fuzzy finder.

**Installation:**

Add to your shell configuration:

```bash
# ~/.bashrc or ~/.zshrc
source ~/path/to/nightingale.nvim/extras/fzf/nightingale.sh
```

**Or directly in your config:**

```bash
# Copy the FZF_DEFAULT_OPTS from extras/fzf/nightingale.sh
export FZF_DEFAULT_OPTS="--color=fg:#DCD7BA,bg:#202020,hl:#98BB6C..."
```

### Tmux

Terminal multiplexer.

**Installation:**

Add to your `~/.tmux.conf`:

```bash
# Source the Nightingale theme
source-file ~/path/to/nightingale.nvim/extras/tmux/nightingale.tmux
```

**Or inline:**

```bash
# Copy the contents of extras/tmux/nightingale.tmux to your .tmux.conf
```

Reload tmux configuration:

```bash
tmux source-file ~/.tmux.conf
```

### Fish

Friendly interactive shell.

**Installation:**

```bash
# Linux/macOS
mkdir -p ~/.config/fish/themes
cp extras/fish/nightingale.fish ~/.config/fish/themes/

# Add to your config.fish:
source ~/.config/fish/themes/nightingale.fish
```

**Or via Fish's theme system:**

```bash
fish_config theme save nightingale
```

### Lazygit

Terminal UI for Git.

**Installation:**

**Option 1:** Merge with existing config:

```bash
cat extras/lazygit/nightingale.yml >> ~/.config/lazygit/config.yml
```

**Option 2:** Use as standalone config:

```bash
cp extras/lazygit/nightingale.yml ~/.config/lazygit/config.yml
```

**Option 3:** Include in your config:

```yaml
# ~/.config/lazygit/config.yml
gui:
  theme:
    selectedLineBgColor: ["#363636"]
    activeBorderColor: ["#98BB6C", "bold"]
    # ... (see extras/lazygit/nightingale.yml for full config)
```

## AI Coding CLIs & TUI Tools

### Claude Code

Anthropic's agentic coding CLI.

**Installation:**

```bash
mkdir -p ~/.claude/themes
cp extras/claude-code/nightingale.json ~/.claude/themes/
```

Select it inside Claude Code with `/theme` → **nightingale**. Values are `overrides` on top of the built-in `dark` base, so any token this file doesn't set still falls back sanely.

### Codex CLI

OpenAI's coding agent CLI.

**Installation:**

```bash
mkdir -p "${CODEX_HOME:-$HOME/.codex}/themes"
cp extras/codex/nightingale.tmTheme "${CODEX_HOME:-$HOME/.codex}/themes/"
```

Run `/theme` inside a Codex session to preview and select **nightingale**. Codex custom themes are standard TextMate `.tmTheme` files.

### Zellij

Terminal workspace / multiplexer.

**Installation:**

```bash
mkdir -p ~/.config/zellij/themes
cp extras/zellij/nightingale.kdl ~/.config/zellij/themes/

# In ~/.config/zellij/config.kdl:
theme "nightingale"
```

### Yazi

Terminal file manager.

**Installation:**

```bash
mkdir -p ~/.config/yazi
cp extras/yazi/nightingale.toml ~/.config/yazi/theme.toml
```

### GitUI

Terminal UI for Git.

**Installation:**

```bash
mkdir -p ~/.config/gitui
cp extras/gitui/nightingale.ron ~/.config/gitui/theme.ron
```

### Delta

Syntax-highlighting pager for git diffs.

**Installation:**

```bash
cat extras/delta/nightingale.gitconfig >> ~/.gitconfig

# Make sure delta is enabled as your pager:
# [core]
#     pager = delta
```

### Btop++

Resource monitor.

**Installation:**

```bash
mkdir -p ~/.config/btop/themes
cp extras/btop/nightingale.theme ~/.config/btop/themes/

# In ~/.config/btop/btop.conf:
color_theme = "nightingale"
```

## Regenerating extras

The Claude Code, Codex, Zellij, Yazi, GitUI, Delta, and Btop++ files above are generated, not hand-written. To regenerate them after a palette change in `lua/nightingale/colors.lua`:

```bash
./scripts/generate-extras
```

This runs `lua/nightingale/extra/init.lua` headlessly via `nvim -l`, which loops over the registry in `lua/nightingale/extra/init.lua` and writes each tool's template (`lua/nightingale/extra/<tool>.lua`) to `extras/<tool>/nightingale.<ext>`. Add a new tool by dropping a `lua/nightingale/extra/<name>.lua` module with a `generate(colors)` function and registering it in `M.extras`.

## Color Palette Reference

All extras use these core colors from Nightingale:

| Color | Hex | Usage |
|-------|-----|-------|
| **green** | `#98BB6C` | Strings, success, active borders |
| **blue** | `#85a8da` | Functions, primary, info |
| **cyan** | `#7cd0bf` | Types, options, links |
| **purple** | `#a584c0` | Keywords, control flow |
| **orange** | `#f5a284` | Constants, numbers |
| **red** | `#ee5d43` | Errors, warnings, unstaged changes |
| **yellow** | `#E6C384` | Identifiers, parameters |
| **gray** | `#727169` | Comments, inactive elements |
| **fg** | `#ffffff` | Main foreground text |
| **fg2** | `#DCD7BA` | Secondary foreground |
| **bg** | `#202020` | Main background |
| **bg_highlight** | `#363636` | Line highlight, selection |

## Troubleshooting

### Colors look different in terminal

Make sure your terminal supports true color (24-bit):

```bash
# Test true color support
curl -s https://gist.githubusercontent.com/lifepillar/09a44b8cf0f9397465614e622979107f/raw/24-bit-color.sh | bash

# Enable true color in tmux (add to .tmux.conf)
set -g default-terminal "screen-256color"
set -ga terminal-overrides ",*256col*:Tc"
```

### Theme not loading

1. Check file paths are correct
2. Verify configuration syntax
3. Reload/restart your terminal/editor
4. Check for conflicting color settings

### Colors don't match Neovim

Ensure you're using the same version of Nightingale for both Neovim and your terminal. All extras are generated from the same color palette in `lua/nightingale/colors.lua`.

## Contributing

Found an issue or want to add support for a new terminal/editor? Please open an issue or pull request at the [Nightingale repository](https://github.com/xeind/nightingale.nvim).

## License

MIT - Same as Nightingale.nvim
