export ANDROID_HOME="/Users/petert/Library/Android/sdk"
export PATH="$PATH:~/phab/arcanist/bin:$ANDROID_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias reproj='reproject --crs-defs=/usr/local/lib/node_modules/reproject/crs-defs.json'
alias wrg='wellknown | reproj --from=EPSG:3006 --to=EPSG:4326 | geojsonio'

alias shelvewebconfig='hg revert ~/vault/ella/ELLAWeb/Web.Local_NoFME.config && hg revert ~/vault/ella/Test/App.config'
alias unshelvewebconfig='cp ~/vault/localellaconfig/Web.config.local ~/vault/ella/ELLAWeb/Web.Local_NoFME.config && cp ~/vault/localellaconfig/App.config.local ~/vault/ella/Test/App.config'

# alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
# alias mvim='/Applications/MacVim.app/Contents/MacOS/MacVim'
EDITOR='vim'

alias arcdiff='arc diff --encoding cp-1252'
alias glog='hg glog --stat'
#alias glogstat='hg log --graph --stat'
alias glogstatdiff='hg log --graph --stat --patch'
alias grep='grep --color=auto'
alias solarize=~/dotfiles/gmodarelli/solarize/solarize.sh


if [ -f /usr/local/etc/autojump.bash ]; then
    . /usr/local/etc/autojump.bash
fi

if [ -d "$HOME/node_modules/.bin" ] ; then
    PATH="$HOME/node_modules/.bin:$PATH"
fi

PATH="node_modules/.bin:$PATH"
