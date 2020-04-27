# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until this has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# Get ready
brew tap caskroom/cask
# brew tap caskroom/versions

# Homebrew cask should symlink into `/Applications` by default, not into `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install packages
apps=(
    # 1password
    # adobe-acrobat-pro # not sure what the difference is between pro and reader
    adobe-acrobat-reader
    alfred
    anki
    # appcleaner
    # backblaze
    dash # remember to set up the Alfred workflow
    dropbox
    evernote
    expressvpn
    firefox
    flux
    focuswriter
    # github-desktop
    # google-adwords-editor
    # google-backup-and-sync
    google-chrome
    google-drive-file-stream
    # googleappengine
    grandperspective
    # hammerspoon
    iterm2
    karabiner-elements
    macdown
    malwarebytes
    microsoft-office
    mkvtoolnix
    onedrive
    pdf-expert
    signal
    simplenote
    skype
    slack
    # sourcetree
    spectacle
    spotify
    # steam
    sublime-text
    transmission
    typinator
    vlc
    whatsapp
)
brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
qlplugins=(
    qlcolorcode
    qlstephen
    qlmarkdown
    quicklook-json
    quicklook-csv
    qlimagesize
    webpquicklook
    suspicious-package
)
brew cask install "${qlplugins[@]}"

# # List of apps not available via cask
# Xcode
# Fantastical 2
# LightsOff https://gumroad.com/l/lightsoff/
# ClipMenu
# The Unarchiver
# Shift
# ToDoist
# Tuxera NTFS
# Microsoft teams