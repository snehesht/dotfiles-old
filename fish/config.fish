# Path to Oh My Fish install.
set -gx OMF_PATH "/home/warlock/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/warlock/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Goland Path
set -gx PATH $PATH ~/WorkSpace/Go/bin
set -gx GOPATH $GOPATH ~/WorkSpace/Go

# Git Commands - Shortcuts
# Git Add
function ga
	git add $argv
end

# Git Commit
function gc
	git commit -m $argv
end

# Git Push
function gpm
	git push -u origin master
end

# Git update config user.name and user.email
function guc
	git config user.name "snehesht"
	git config user.email "mail@snehesh.me"
end

# Git Help
function gh
	echo "Usage:	~/dotfiles/fish/config.fish"
	echo "******"
	echo "ga args	: git add args"
	echo "gc args   : git commit -m args"
	echo "gpm 	: git push -u origin master"
	echo "guc 	: git config user.name and git config user.email"
end



