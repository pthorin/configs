# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/pt/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  kube-ps1
  ssh-agent
  zsh-completions)

zstyle :omz:plugins:ssh-agent identities id_rsa test.pem production.pem

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

# User configuration
export DEFAULT_USER=pt
prompt_context(){}
PROMPT=$PROMPT'$(kube_ps1) '
#
# Set some paths
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export PATH=$PATH:~/scripts
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.gem/ruby/2.5.0/bin

if (( ! ${fpath[(I)/usr/local/share/zsh/site-functions]} )); then
  FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi


export NVM_DIR="$HOME/.nvm"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export EDITOR='vim'

export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar"
export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man":$MANPATH
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info":$INFOPATH


# get all the zecrets!
source ~/.zecrets > /dev/null


export CODE_PATH=~/repos
export CDPATH=.:~:~/repos

# Tiny Care Terminal
#export TTC_BOTS='honest_update,dmofengineering,selfcare_bot'
export TTC_SAY_BOX='parrot'
export TTC_REPOS='/home/pt/repos'
export TTC_REPOS_DEPTH=2
export TTC_WEATHER='Gothenburg'
export TTC_CELSIUS=true
export TTC_APIKEYS=false
export TTC_UPDATE_INTERVAL=20
export TTC_TERMINAL_TITLE=false
export TTC_POMODORO=25
export TTC_BREAK=10


eval $(lesspipe)
#export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=" -R "


# Load aliases
source ~/repos/dotfiles/zsh/aliases
# Load functions
source ~/repos/dotfiles/zsh/functions
# Load jira functions
source ~/repos/dotfiles/zsh/jira
# aws complete
source /home/pt/.local/bin/aws_zsh_completer.sh
# spl complete
source <(spl completion zsh)
# stern complete
source <(stern --completion zsh)

unsetopt auto_cd
