#https://raw.githubusercontent.com/gilbertwyw/dotfiles/master/zsh/zshrc

BREW_PREFIX=$(brew --prefix)

# brew install antigen; brew list antigen
source $BREW_PREFIX/Cellar/antigen/1/share/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle brew
antigen bundle brew-cask
antigen bundle common-aliases
antigen bundle git
antigen bundle web-search

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src

# https://github.com/sindresorhus/pure#antigen
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply

manpath=(
  # `brew info coreutils`
  $BREW_PREFIX/opt/coreutils/libexec/gnuman
  $manpath
)

path=(
  ~/bin
  $BREW_PREFIX/bin
  $BREW_PREFIX/sbin
  # `brew info coreutils`
  $BREW_PREFIX/opt/coreutils/libexec/gnubin
  $path
)

typeset -U path

setopt no_beep

export LC_ALL=$LANG

if which nvim > /dev/null; then
  export EDITOR=`which nvim`
else
  export EDITOR=`which vim`
fi

# default: 1000
export NODE_REPL_HISTORY_SIZE=2000

# `brew info chruby`
source $BREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source $BREW_PREFIX/opt/chruby/share/chruby/auto.sh

# `brew install jenv`
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# `brew install pyenv`
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# `brew install direnv`, https://github.com/zimbatm/direnv#zsh
eval "$(direnv hook zsh)"

# `brew install fzf`
# based on `$BREW_PREFIX/Cellar/fzf/<version>/install`
if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh

  # set 'ag' as the default source for 'fzf'
  export FZF_DEFAULT_COMMAND='ag --skip-vcs-ignores -l -g ""'
fi

# `brew info z`
. `brew --prefix`/etc/profile.d/z.sh

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# iTerm
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh