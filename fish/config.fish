# brew 
set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew";
set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew";
set -g fish_user_paths "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin" $fish_user_paths;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH;


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

if test -d ~/.gem/ruby/2.5.0/bin
  set -x PATH $PATH ~/.gem/ruby/2.5.0/bin
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
  abbr --add gpu git push -u
  abbr --add grc git rebase --continue
  abbr --add gra git rebase --abort
  abbr --add gs git st
  abbr --add gl git ls
  abbr --add glp git lsp
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
  abbr --add vkcp 'watch -n 1 kubectl get pods'
end

# lesspipe
eval (lesspipe)

# Hack to make tab complete the automatic suggestion and tab+tab do completion
bind \t forward-char
bind \t\t complete
