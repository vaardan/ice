# To make zsh source this file instead of original one
# ZDOTDIR=$HOME/.config/zsh in .zprofile 
source "$ZDOTDIR/functions.zsh"

zsh_add_file "prompt/agkozak-zsh-prompt.plugin.zsh"
zsh_add_file "supercharge.plugin.zsh"
zsh_add_file "zsh-autosuggestions.plugin.zsh"
zsh_add_file "aliases.zsh"
zsh_add_file "exports.zsh"

# keybinds
bindkey '^]' autosuggest-accept

if type zoxide &> /dev/null; then
	eval "$(zoxide init zsh)"
fi
