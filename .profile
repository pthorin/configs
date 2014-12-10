
PATH="$PATH:~/phab/arcanist/bin"

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

if [ -f /usr/local/etc/autojump.bash ]; then
    . /usr/local/etc/autojump.bash
fi
