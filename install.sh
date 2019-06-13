#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.bashrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.bash_prompt" ~

# Install the package managers &  packages
. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"

# Run defaults
. "$DOTFILES_DIR/defaults/defaults_osx.sh"
# . "$DOTFILES_DIR/defaults/defaults_dock.sh" # Remember we need dockutil in brew.sh to run this
# . "$DOTFILES_DIR/defaults/defaults_apps.sh" # Currently no defaults written