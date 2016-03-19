export IPKG_CONF_DIR=~/etc


### use cdargs

# export IPKG_OFFLINE_ROOT=~/jffs/
# export IPKG_ROOT=~/jffs/


# unset IPKG_CONF_DIR
# unset IPKG_ROOT
# unset IPKG_OFFLINE_ROOT

# echo $IPKG_OFFLINE_ROOT
# echo $IPKG_ROOT

# GIT DOCS
# https://git-scm.com/docs
# http://think-like-a-git.net/
# https://git-scm.com/docs/git-rev-parse

# general
alias cls="clear"


alias cbin="cabal-install install"
alias cbup="cabal-install update"
alias cb="cabal-install"

# directory listing
alias ll="ls -AFlhsiu" #full details, sort alpha
# alias la="ls -a"
alias lb="ls -AFlhsiSr" #full details, sort by size, large bottom
alias lm="ls -AFlhsitr"  #full details, sort by modifation time, recent bottom

alias d2u="dos2unix"
# CUSTOM HELP, OUTPUT FILES
# output the first X lines of the file, excluding emptly lines
alias zh="cls;cat ~/.oh-my-zsh/plugins/z/README | grep -m 23 . "
alias wph="cls;cat ~/.oh-my-zsh/plugins/wp-cli/README.md"
alias jh="cls;cat ~/.oh-my-zsh/plugins/jump/jump.plugin.zsh | grep -m 8 ."
alias sysh="cls;cat ~/.oh-my-zsh/plugins/systemadmin/systemadmin.plugin.zsh | grep '\#\|.' "

alias gitdiff="git diff --stat --cached origin/master"

alias gom="git checkout master"
alias gop="git checkout prod"
alias go="git checkout"
alias gm='git merge -m "merge"'
alias ls="ll --color=auto";

alias gr="git reset --hard"
alias gc="git commit -m"
alias gcg="git commit -m 'run grunt'"		#not sure that this works
alias ga="git add"
alias gb="git branch"

alias gbasep="git rebase prod"
alias gbasem="git rebase master"

alias gp="git push origin HEAD"
alias gpl="git pull"

alias push="gp"
alias pull="gpl"

alias gup="git push -u origin"

# various git show functions (gs...)
alias gs="git status"					# git status
alias gss="git diff --stat @{u} HEAD"	# git status stat

alias gsb="git branch"					# git show branches
alias gsbh="git show-branch"			# git show branch history
alias gsbm="git branch --merged"		# git show branchmerged, show which branches have been merged in to this
alias gsbc="git branch --contains"		# git show branch contains, show which branches have this has merged into
alias gsl="git log --walk-reflogs --oneline @{1}"
alias gsl1="git shortlog -n -e"			# git show log
alias gsl2="git shortlog -n -e -s"		# git show log summary
alias gsl3="git log"					# git show log

alias gsst="git stash show"				# git show stash
alias gsr="git show"					# git show recent

alias pear="pear.bat"
alias composer.phar="composer"

alias gitconfigs="git config --list"
alias gitconf="gitconfigs"
alias gconf="gitconfigs"

alias ip="ipconfig"
alias flushdns="ipconfig /flushdns"

alias apt-get="apt-cyg"
alias pkg="apt-cyg"
alias pkgs="apt-cyg searchall"
alias pkgi="apt-cyg show"
alias pkgin="apt-cyg install"

alias get="apt-cyg"
alias gets="apt-cyg searchall"
alias geti="apt-cyg show"
alias getin="apt-cyg install"


alias iin="ipkg install"


alias explore="gowin"
alias winhere="gowin"
alias windir="winpath"

function winpath () {
  cygpath -w $PWD
}
function gowin () {
  explorer.exe /e,`cygpath -w $PWD`
}