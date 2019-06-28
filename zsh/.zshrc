# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
ZSH_THEME="spaceship"
source ~/.zshthemes/spaceship.config

# Ignore - in correction/completion
HYPHEN_INSENSITIVE="true"
# Check for updates 
export UPDATE_ZSH_DAYS=5

# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-syntax-highlighting
)

# Oh my zsh
source $ZSH/oh-my-zsh.sh

#Auto suggestions
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# z for cd
. /usr/share/z/z.sh

# User configuration
source ~/.zshuser
source ~/.zshenv
