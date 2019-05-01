# Defined in - @ line 0
function kubectl-extract-context --description 'alias kubectl-extract-context=kc config view --minify=true --flatten --context'
	kc config view --minify=true --flatten --context $argv;
end
