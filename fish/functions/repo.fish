function repo
  # Call from a local repo to open the repository on github/bitbucket in browser
  # Modified version of https://github.com/zeke/ghwd
	# Figure out github repo base URL
  set base_url (git config --get remote.origin.url | sed -n '/\.git$/s///p' |  sed -n '/git@github\.com:/s//https:\/\/github\.com\//p')

	# Validate that this folder is a git folder
	if test not (git branch 2>/dev/null 1>&2)
		echo "Not a git repo!"
		exit $status
  end

	# Find current directory relative to .git parent
	set full_path (pwd)
	set git_base_path (cd "./(git rev-parse --show-cdup)" ; or exit 1; pwd)
	set relative_path (echo full_path | sed -n "/$git_base_path/s///p") # remove leading git_base_path from working directory

	# If filename argument is present, append it
	if test -n  "$1"
		relative_path="$relative_path/$1"
  end

	# Figure out current git branch
	# git_where=$(command git symbolic-ref -q HEAD || command git name-rev --name-only --no-undefined --always HEAD) 2>/dev/null
	set git_where (command git name-rev --name-only --no-undefined --always HEAD) 2>/dev/null

	# Remove cruft from branchname
	set branch (echo git_where | sed -n '/refs\/heads\//s///p')

	echo "Calling (type open) for $url"

	open "$url" > /dev/null ; or echo "Using (type open) to open URL failed." 
end

