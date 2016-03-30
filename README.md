# dotfiles
Archlinux, KDE, Xfce-Terminal, Tmux, Powerline

Clone this repo into the home directory
```
cd ~
git clone https://github.com/snehesht/dotfiles
```

## Fish Shell Setup
Install fish-shell using yaourt and then go to [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish) and install it too.
Remove the directory ~/.config/fish and create a symlink

```
rm -rf ~/.config/fish
ln -s ~/dotfiles/fish ~/.config/fish
```
### Fish Shortcuts


```
[Edit files - Using NeoVim]
$ edit FILE_NAME

[Git Support]
$ gh

[Temperature]
$ sensor
```


## Tmux key bindings

Prefix Key ($prefix)	: `	Ctrl + a `

New Window : 		           	`$prefix + n`

Split Pane (Horizontal) : `	$prefix + h`

Split Pane (Vertical) :   	`$prefix + v`

Kill Window : 		        	`Ctrl + k + w`

Kill Pane : 			         ` Ctrl + k + p`

Next Window : 		        	`Shift + Right Arrow`

Prev Window : 		        	`Shift + Left Arrow`

Switch Pane Up : 		`Ctrl + Up Arrow`

Switch Pane Down : 		`Ctrl + Down Arrow`

Switch Pane Right : 		`Ctrl + Right Arrow`

Switch Pane Left : 		`Ctrl + Left Arrow`
