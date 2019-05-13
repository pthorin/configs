# get all the fishy secrets!
source ~/.fishy-secrets > /dev/null

set -x EDITOR vim

# Set some paths
set -x GOPATH ~/go
if test -d ~/scripts 
    set -x PATH $PATH ~/scripts
end
if test -d $GOPATH/bin 
  set -x PATH $PATH ~/go/bin
end

if test -d ~/.gem/bin 
  set -x PATH $PATH ~/.gem/bin
end

set -x CODE_PATH ~/repos

# Tiny Care Terminal
set -x TTC_BOTS 'honest_update,tinycarebot,selfcare_bot'
set -x TTC_SAY_BOX 'parrot'
set -x TTC_REPOS '/home/pt/repos'
set -x TTC_REPOS_DEPTH 2
set -x TTC_WEATHER 'Gothenburg'
set -x TTC_CELSIUS true
set -x TTC_APIKEYS false
set -x TTC_UPDATE_INTERVAL 20
set -x TTC_TERMINAL_TITLE false
set -x TTC_POMODORO 25
set -x TTC_BREAK 10

# Abbreviations
if status --is-interactive
  set -g fish_user_abbreviations
  # git
  abbr --add ga 'git add'
  abbr --add gp git push
  abbr --add gpf git pushf
  abbr --add gs git st
  abbr --add gl git ls
  abbr --add gc 'git commit --interactive -m '
  abbr --add gco git checkout
  abbr --add gcob git cob
  # grep
  abbr --add grep ag
  # kubectl
  abbr --add kc 'kubectl'
  abbr --add kca 'kubectl apply -f'
  abbr --add kcp 'kubectl get pods'
  abbr --add kcu 'kubectl config use-context'
  abbr --add kec 'kubectl config view --minify=true --flatten --context'
end
