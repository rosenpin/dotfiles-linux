# Path to your oh-my-zsh installation.
export ZSH=/home/tomer/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
ZSH_THEME="spaceship"
source ~/dotfiles/zshthemes/spaceship.config

# Ignore - in correction/completion
HYPHEN_INSENSITIVE="true"
# Check for updates 
export UPDATE_ZSH_DAYS=5

# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Oh my zsh
source $ZSH/oh-my-zsh.sh

#Auto suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# User configuration
source ~/dotfiles/zshuser
