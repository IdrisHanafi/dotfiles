#stty -ixon

export CLICOLOR=1
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$PATH:/usr/local/mysql/bin/
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias idris="ssh -i /Users/idris/.ssh/Idris-Server.pem ubuntu@3.133.89.173"

# Enable a better reverse search experience.
#   Requires: https://github.com/junegunn/fzf (to use fzf in general)
#   Requires: https://github.com/BurntSushi/ripgrep (for using rg below)
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Allows 256 Color for VIM and TMUX
if [ "$TERM" = "xterm" ]; then
  export TERM=xterm-256color
fi
alias tmux='tmux -2'  # for 256color
