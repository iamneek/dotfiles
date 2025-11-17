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



# alias tm=new_tmux
alias c=clear
alias vim=nvim
alias vi=nvim
alias ls="eza --icons"
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias fastf="fastfetch"
alias grep="rg"
alias hx="helix"
alias gcam="git commit -am"
alias gclone="git clone"
alias zed="zeditor"
alias coolgit="~/Code/Python/Other/GIT_from_scratch/codecrafters-git-python/your_program.sh"
# alias charm="nohup pycharm"
# alias idea="nohup idea"
# alias studio="nohup studio"

export FUNCNEST=2000
eval "$(zoxide init zsh --cmd cd)"
eval $(thefuck --alias)




export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/home/coolbit/.local/share/JetBrains/Toolbox/scripts"
export PATH="$PATH:$HOME/flutter/bin"
export CHROME_EXECUTABLE=/usr/bin/chromium

# Home brew - everything below till --- is added from bashrc

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
#
. "$HOME/.cargo/env"
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools:$PATH
export PATH=$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/emulator:$PATH
#
# . "$HOME/.local/share/../bin/env"
# export PATH="$HOME/.local/bin:$PATH"
# ---
