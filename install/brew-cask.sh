# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Homebrew cask should symlink into `/Applications` by default, not into `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install packages
apps=(
    # adobe-acrobat-pro # not sure what the difference is between pro and reader
    adobe-acrobat-reader
    alfred
    anki
    # appcleaner
    backblaze
    clipmenu
    dash # remember to set up the alfre workflow
    dropbox
    evernote
    expressvpn
    focuswriter
    firefox
    flux
    focuswriter
    # github-desktop
    # google-adwords-editor
    google-chrome
    # googleappengine
    grandperspective
    # hammerspoon
    iterm2
    macdown
    malwarebytes
    microsoft-office
    mkvtoolnix
    onedrive
    pdf-expert
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
    betterzipql
    qlimagesize
    webpquicklook
    suspicious-package
)
brew cask install "${qlplugins[@]}"

# # List of apps not available via cask
# UnRarX
# ToDoist
# Xcode
