# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="babun"
#ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"			################################### TESTING, MAY CAUSE GIT ISSUES

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git bower cp dircycle dirhistory dirpersist gem git-extras gnu-utils grunt history history-substring-search jump node npm pip systemadmin vagrant wp-cli z)

## REMOVED
# git		## throwing errors?
# history-substring-search
plugins=(bower cp dircycle dirhistory dirpersist gem git-extras gnu-utils grunt history jump node npm pip systemadmin vagrant wp-cli z)


################################ BEGIN AUTOSUGGESTIONS

# Load zsh-syntax-highlighting.
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load zsh-autosuggestions.
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/autosuggestions.zsh


# # Accept suggestions without leaving insert mode
#bindkey '^D' vi-forward-word
# # or
# bindkey '^f' vi-forward-blank-word

#######  Exposed widgets (functions)
## autosuggest-toggle ## – disable/enable autosuggestions.
## autosuggest-execute-suggestion – accept the suggestion and execute it.

bindkey '^T' autosuggest-toggle					# ctrl + T
bindkey '^f' autosuggest-execute-suggestion		# ctrl + G

## bindkey "^I"  autosuggest-execute-suggestion	#expand-or-complete
AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=9' #– suggestion highlight color, default is 'fg=8'.
# AUTOSUGGESTION_HIGHLIGHT_CURSOR #– highlight word after cursor, or not. Must be integer value 1 or 0, default is 1.
AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1 #– complete entire suggestion with right arrow. Must be integer value 1 or 0, default is 0 (right arrow completes one letter at a time).


################################ END AUTOSUGGESTIONS

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

########## DIRCOLORS
eval `dircolors ~/.dir_colors`		# USE dircolors to setup LS_COLORS VAR
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# general
alias cls="clear"


# directory listing
alias ll="ls -AFlhsiu" #full details, sort alpha
# alias la="ls -a"
alias lb="ls -AFlhsiSr" #full details, sort by size, large bottom
alias lm="ls -AFlhsitr"  #full details, sort by modifation time, recent bottom


# CUSTOM HELP, OUTPUT README FILES
# output the first X lines of the README file, excluding emptly lines
alias zh="cls;cat ~/.oh-my-zsh/plugins/z/README | grep -m 23 . "
alias wph="cls;cat ~/.oh-my-zsh/plugins/wp-cli/README.md"
alias jh="cls;cat ~/.oh-my-zsh/plugins/jump/jump.plugin.zsh | grep -m 8 ."
alias sysh="cls;cat ~/.oh-my-zsh/plugins/systemadmin/systemadmin.plugin.zsh | grep '\#\|.' "



# Enable autosuggestions automatically.
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init
