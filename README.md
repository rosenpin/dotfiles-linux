# dotfiles
My dot files

Specifically optimised for my setup which includes:

* Logitech G930 - Headphoes 
* Daskeyboard 4C - Keyboard
* Logitech MX Performance - Mouse

I'm using i3 over Arch

## Installation
todo: I should add a full script to auto install the configuration, but for now:

### Tmux
```
ln -s -f ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s -f ~/dotfiles/.tmux ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Kill tmux, open it, press `prefix` + <kbd>I</kbd> (
