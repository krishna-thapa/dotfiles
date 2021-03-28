# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH. ############
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Use ASDF version of Python3 ###########################################
export PATH=$HOME/.asdf/shims/python:$PATH

# Homebrew requires this ################################################
export PATH="/usr/local/sbin:$PATH"

# NPM log level (silent, error,warn, verbose, silly) ####################
export npm_config_loglevel=silent

# HSTR configuration | brew install hstr #################################
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)

# zsh-history-substring-search key bindings #############################
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# http://zdharma.org/zplugin/ | brew install zplugin ####################
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin 

### End of Zplugin installer's chunk ####################################

zplugin ice blockf; 

zplugin light zsh-users/zsh-completions
zplugin light zsh-users/zsh-history-substring-search
zplugin light zsh-users/zsh-syntax-highlighting

zplugin ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"

zplugin ice wait lucid atload'_zsh_autosuggest_start'
zplugin light zsh-users/zsh-autosuggestions

zplugin snippet OMZ::plugins/dotenv/dotenv.plugin.zsh
zplugin snippet OMZ::plugins/fzf/fzf.plugin.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::plugins/safe-paste/safe-paste.plugin.zsh

zplugin ice depth=1; zplugin light romkatv/powerlevel10k

# https://gist.github.com/ctechols/ca1035271ad134841284  ################
autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

# https://github.com/nvbn/thefuck | brew install thefuck ################
eval $(thefuck --alias)

# https://github.com/junegunn/fzf | brew install fzf #####################
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh. #########
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add vscode
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Add npm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# change zsh-autosuggestions color
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"

# Example aliases
# https://github.com/ogham/exa
alias ll1="exa -l -a -T --level=1 ."
alias ll2="exa -l -a -T --level=2 ."
alias ll3="exa -l -a -T --level=3 ."
alias ll="exa -l -a"
alias l="exa --icons"
alias la="exa --icons -a"
# fzf aliases
alias search="fzf --preview 'bat {-1} --color=always'"

# git diff with fzf preview
gitdiff() {
  preview="git diff $@ --color=always -- {-1}"
  git diff $@ --name-only | fzf -m --ansi --preview $preview
}