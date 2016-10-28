function ssh(){
    tmux rename-window "SSH//$@"
    command ssh "$@"
    exit
}
