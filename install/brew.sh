# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until this has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#
brew update # update Homebrew itself
brew upgrade # update apps TODO should this not come after the app installs below?

# Install packages
apps=(
    # dockutil # enables the dock settings in $DOTFILES_DIR/defaults/defaults_dock.sh
    # ffmpeg # A complete, cross-platform solution to record, convert and stream audio and video.
    git
    # hub # command-line wrapper for git that makes you better at GitHub.
    mackup # Keep your application settings in sync via Dropbox. Sounds clever.
    # ntfs-3g # I can't get this to work. Download Tuxera instead https://gumroad.com/l/lightsoff/
    node
    # peco # Simplistic interactive filtering tool. Looks cool.
    # python
    tree # depth indented listing of files
    # get # for retrieving files using HTTP, HTTPS and FTP
)
brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" "$HOME/bin/diff-highlight"