# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export PATH="$(brew --prefix)/bin:$PATH";
export HOMEBREW_GITHUB_API_TOKEN="";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Add tab completion for many Bash commands
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi
# if which brew > /dev/null && [ -f $(brew --prefix)/etc/bash_completion ]; then
#   source "$(brew --prefix)/etc/bash_completion";
# elif [ -f /etc/bash_completion ]; then
#   source /etc/bash_completion;
# fi;

# Enable tab completion for `g` by marking it as an alias for `git`
# if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
#  complete -o default -o nospace -F _git g;
# fi;

LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
 . $LUNCHY_DIR/lunchy-completion.bash
fi

# If you installed the SDK without Android Studio, then it may be something like:
# /usr/local/opt/android-sdk
export ANDROID_HOME=~/Library/Android/sdk

# Your exact string here may be different.
PATH="~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="/Users/michael/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
