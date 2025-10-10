eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
export PGHOST="/var/run/postgresql"


export PATH=$PATH:/usr/local/go/bin
. ${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.zsh
HISTFILE=~/.history
HISTSIZE=10001
SAVEHIST=50001

setopt inc_append_history

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$HOME/.local/share/omarchy/bin:$PATH"
# export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# Zsh syntax highlighting (last!)
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh


# new_tmux () {
#   session_dir=$(zoxide query --list | fzf)
#   session_name=$(basename "$session_dir")
#
#   if tmux has-session -t $session_name 3>/dev/null; then
#     if [ -n "$TMUX" ]; then
#       tmux switch-client -t "$session_name"
#     else
#       tmux attach -t "$session_name"
#     fi
#     notification="tmux attached to $session_name"
#   else
#     if [ -n "$TMUX" ]; then
#       tmux new-session -d -c "$session_dir" -s "$session_name" && tmux switch-client -t "$session_name"
#       notification="new tmux session INSIDE TMUX: $session_name"
#     else
#       tmux new-session -c "$session_dir" -s "$session_name"
#       notification="new tmux session: $session_name"
#     fi
#   fi
#
#   if [-s "$session_name" ]; then
#     notify-send "$notification"
#   fi
# }

# alias tm=new_tmux
alias c=clear
alias vim=nvim
alias vi=nvim
alias ls="eza --icons"
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias fastf="fastfetch"
alias grep="rg"

export FUNCNEST=2000
eval "$(zoxide init zsh --cmd cd)"
eval $(thefuck --alias)
# Design



export PATH="$PATH:/home/coolbit/.local/share/JetBrains/Toolbox/scripts"
