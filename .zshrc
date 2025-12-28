# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hyperion/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.antidote/antidote.zsh
antidote load

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search   # Up arrow
bindkey '^[[B' down-line-or-beginning-search # Down arrow

eval "$(starship init zsh)"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

alias nvimconf='nvim ~/.config/nvim'

# Always work in a tmux session if Tmux is installed
# if which tmux 2>&1 >/dev/null; then
#   if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
#     tmux attach -t default || tmux new -s default; exit
#   fi
# fi

alias la='ls -la'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
