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
stow tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Kill tmux, open it, press `prefix` + <kbd>I</kbd> 

### Vim
```
stow vim
```

### ZSH
```
stow zsh
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
stow config
```

### i3
```
stow config
```
For rofi
* Install rofi
* Install this theme https://github.com/ricwtk/rofi-themes (or just copy the input-emph-nobar.rasi file to your ~/.local/share/rofi/themes/input-emph-nobar.rasi)

### xbindkeys
```
ln -s -f ~/dotfiles/.xbindkeysrc ~/.xbindkeysrc
```
