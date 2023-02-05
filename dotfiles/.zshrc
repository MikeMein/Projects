
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#####################################
# EXPORTS
#####################################

export EDITOR=vi

# adding directory to PATH attempt
export PATH=~/bin:"$PATH"
export PATH=$(brew --prefix)/bin:$PATH

#####################################
# ALLIASES 
#####################################

# my Mac ZSH aliases
alias ll='ls -laF'

# aliases with pathanmes
alias ec="$EDITOR $HOME/.zshrc" 
alias sc="source $HOME/.zshrc"

# shell function for git flow 
gitf () {
  echo "Git Hub flow function experiment"
  git add .
}

# Homebrew zsh pathname completion without Oh-My-Zsh installed yet
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# alias from zsh guide
alias %=' '

