#function fish_prompt
#    /home/warlock/powerline-shell.py $status --shell bare ^/dev/null
#end

#set fish_function_path $fish_function_path 
#"/usr/lib/python3.5/site-packages/powerline_status-2.3-py3.5.egg/powerline/bindings/fish" 
#powerline-setup
set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

# Google AppEngine SDK path
set -gx PATH $PATH /opt/google/app_engine_python_sdk/
set -gx PGROOT $PGROOT /var/lib/postgres/

# Goland Path
set -gx PATH $PATH ~/WorkSpace/Go/bin
set -gx GOPATH $GOPATH ~/WorkSpace/Go

