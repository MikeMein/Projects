
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#####################################
# EXPORTS
#####################################

export EDITOR=vi
export PROMPT='%1~ '
# adding directory to PATH attempt
export PATH=~/bin:"$PATH"
export PATH=$(brew --prefix)/bin:$PATH

#####################################
# ALLIASES 
#####################################

# my Mac ZSH aliases
alias ll='ls -laF'

# Idea from zsh guide for copying commands with current user symbol
alias %=' '
alias \$=' '
alias \#='sudo'
# aliases with pathanmes
alias ec="$EDITOR $HOME/.zshrc" 
alias sc="source $HOME/.zshrc"

# shell function for git flow 
gicm () {
  git add .
  git commit -m "$1"
}
gipu () {
  git add .
  git commit -m "$1"
  git push
}
# Homebrew zsh pathname completion without Oh-My-Zsh installed yet
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi


