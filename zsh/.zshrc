fpath+=~/.zfunc

export PATH="$HOME/bin:$PATH";
export PATH="$HOME/.local/bin:$PATH";

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="malbino"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles, and then some:
for file in ~/.{exports,exports_user,aliases,aliases_user,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

gpgconf --launch gpg-agent