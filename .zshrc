export CLICOLOR=1
export EDITOR="vim"
export ZSH="/Users/idris/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# gtfo bell noise in zsh
unsetopt BEEP

#plugins=(git vi-mode)

# Android React Native
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

source $ZSH/oh-my-zsh.sh

# User configuration
alias idris="ssh -i /Users/idris/.ssh/Idris-Server.pem ubuntu@idrishanafi.info"
alias dev-tmux="tmux new-session \; split-window -v -p 25 \; split-window -h \;"
alias v="nvim"
alias vi="nvim"
#alias vim="nvim"
alias view="nvim -R"
alias vimdiff="nvim -d"

# tmuxinator alias
alias mads="tmuxinator start mads"
alias craftle="tmuxinator start craftle"
alias craftlew="tmuxinator start craftle-web"

# Enable a better reverse search experience.
#   Requires: https://github.com/junegunn/fzf (to use fzf in general)
#   Requires: https://github.com/BurntSushi/ripgrep (for using rg below)
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ "$TERM" = "xterm" ]; then
  export TERM=xterm-256color
fi
alias tmux='tmux -2'  # for 256color

bindkey -v
bindkey '^r' history-incremental-search-backward

export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

# AMZN alias lol
alias b="brazil"
alias bb="brazil-build"
alias bws="brazil ws"
