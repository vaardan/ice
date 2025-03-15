# To make zsh source this file instead of original one
# ZDOTDIR=$HOME/.config/zsh in .zprofile 
source "$ZDOTDIR/functions.zsh"

zsh_add_file "supercharge.plugin.zsh"
zsh_add_file "zsh-autosuggestions.plugin.zsh"
zsh_add_file "aliases.zsh"
zsh_add_file "exports.zsh"

export PS1="%{$(tput setaf 39)%}[%n::%?] %{$(tput setaf 195)%}%~ %{$(tput sgr0)%}> "

# keybinds
bindkey '^]' autosuggest-accept

if type zoxide &> /dev/null; then
	eval "$(zoxide init zsh)"
fi
