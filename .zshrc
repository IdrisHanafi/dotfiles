export CLICOLOR=1
export EDITOR="vim"
export ZSH="/Users/idris/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration
alias idris="ssh -i /Users/idris/.ssh/Idris-Server.pem ubuntu@idrishanafi.info"
alias dev-tmux="tmux new-session \; split-window -v -p 25 \; split-window -h \;"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias vimdiff="nvim -d"

# tmuxinator alias
alias mads="tmuxinator start mads"
alias zai="tmuxinator start zai"

# Enable a better reverse search experience.
#   Requires: https://github.com/junegunn/fzf (to use fzf in general)
#   Requires: https://github.com/BurntSushi/ripgrep (for using rg below)
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ "$TERM" = "xterm" ]; then
  export TERM=xterm-256color
fi
alias tmux='tmux -2'  # for 256color

set -o vi
