# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export PATH="$(brew --prefix)/bin:$PATH";
export HOMEBREW_GITHUB_API_TOKEN="";

# Load the shell dotfiles, and then some:
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
