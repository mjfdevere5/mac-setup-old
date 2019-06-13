#!/bin/sh

dockutil --no-restart --remove all

dockutil --no-restart --add "/Applications/Todoist.app"
dockutil --no-restart --add "/Applications/Firefox.app"
dockutil --no-restart --add "/Applications/Spotify.app"

# TODO what exactly should I do with the dock?

killall Dock