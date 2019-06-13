# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Variables
OS=$(uname -s)
DOTFILES_DIR="$HOME/_dotfiles"

# Finally we can source the dotfiles (order matters)
for DOTFILE in "$DOTFILES_DIR"/runcom/.{functions,path,env,aliases,bash_prompt}; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Clean up
unset DOTFILE

# Export
export OS DOTFILES_DIR