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


