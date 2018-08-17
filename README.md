# dotfiles
My dot files

Specifically optimised for my setup which includes:

* Logitech G930 - Headphoes 
* Daskeyboard 4C - Keyboard
* Logitech MX Performance - Mouse

I'm using i3 over Arch

## Installation
todo: I should add a full script to auto install the configuration, but for now:

### General
After cloning
```
git submodule init
git submodule update
```

### Tmux
```
ln -s -f ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s -f ~/dotfiles/.tmux ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Kill tmux, open it, press `prefix` + <kbd>I</kbd> 

### Vim
```
ln -s -f ~/dotfiles/.vimrc ~/.vimrc
```

### ZSH
```
ln -s -f ~/dotfiles/.zshrc ~/.zshrc
ln -s -f ~/dotfiles/.zprofile ~/.zprofile
```
For the spaceship theme
```
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```
For the autocomplete
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Alacritty
```
ln -s -f ~/dotfiles/alacritty ~/.config/alacritty/alacritty.yml
```

### i3
```
ln -s -f ~/dotfiles/i3 ~/.config/i3
```

### xbindkeys
```
ln -s -f ~/dotfiles/.xbindkeysrc ~/.xbindkeysrc
```
