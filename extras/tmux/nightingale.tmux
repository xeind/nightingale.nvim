#!/usr/bin/env bash

# Nightingale colors for Tmux

set -g mode-style "fg=#85a8da,bg=#585858"

set -g message-style "fg=#85a8da,bg=#585858"
set -g message-command-style "fg=#85a8da,bg=#585858"

set -g pane-border-style "fg=#585858"
set -g pane-active-border-style "fg=#85a8da"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#85a8da,bg=#282828"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#202020,bg=#85a8da,bold] #S #[fg=#85a8da,bg=#282828,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#282828,bg=#282828,nobold,nounderscore,noitalics]#[fg=#85a8da,bg=#282828] #{prefix_highlight} #[fg=#585858,bg=#282828,nobold,nounderscore,noitalics]#[fg=#85a8da,bg=#585858] %Y-%m-%d  %I:%M %p #[fg=#85a8da,bg=#585858,nobold,nounderscore,noitalics]#[fg=#202020,bg=#85a8da,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#282828,bg=#282828,nobold,nounderscore,noitalics]#[fg=#85a8da,bg=#282828] #{prefix_highlight} #[fg=#585858,bg=#282828,nobold,nounderscore,noitalics]#[fg=#85a8da,bg=#585858] %Y-%m-%d  %H:%M #[fg=#85a8da,bg=#585858,nobold,nounderscore,noitalics]#[fg=#202020,bg=#85a8da,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#DCD7BA,bg=#282828"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#DCD7BA,bg=#282828"
setw -g window-status-format "#[fg=#282828,bg=#282828,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#282828,bg=#282828,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#282828,bg=#585858,nobold,nounderscore,noitalics]#[fg=#85a8da,bg=#585858,bold] #I  #W #F #[fg=#585858,bg=#282828,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#FF9E3B]#[bg=#282828]#[fg=#282828]#[bg=#FF9E3B]"
set -g @prefix_highlight_output_suffix ""
