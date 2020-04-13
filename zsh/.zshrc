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

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] 2>/dev/null ))
}
compctl -K _pip_completion pip
# pip zsh completion end
