DOTFILES_DIR="/Users/fbhuiyan/dev/dotfiles"

# Source the dotfiles (order matters)
for DOTFILE in "$DOTFILES_DIR"/.{path,env,alias,bash_prompt}; do
  . "$DOTFILE"
done

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

