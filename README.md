# dotfiles

For a clean install:

1. Open a Finder window and set the default view options by holding the `alt` key. The reason you do this first is because these defaults will only apply to folders that haven't yet been opened. So best to do it straight away.

2. Transfer all files etc. into the `$HOME` folder. Don't forget the stuff in `~/Library/Services/` folder.

3. Check you're happy with the apps it will install and the defaults it will set, then run ./install.sh. It will first create symlinks to `.bash_profile`, `.bashrc`, `.inputrc` (so the Terminal will automatically pull these settings in, whenever it runs), and then install the apps, then install the defaults.

4. Manually install those remaining apps I use which aren't on brew cask: ClipMenu, The Unarchiver, ToDoist, LightsOff, Tuxera NTFS

5. Log into Dropbox and sync files. Once done, run `mackup restore` to sync settings

6. Some settings need to be done manually e.g. Alfred. Just set it to return all filetypes, get the PinPlus workflow, and make it as wide as possible.

7. There is finally one Application that you need to create manually: `iTermHere`, by opening `iTermHere.scpt` (found in `~/_utils`) and exporting as an Application (or simply copy over the app directly from old laptop). Move this new App into the `/Applications` folder.

8. Create keyboard shortcuts for Services: `iTermHere` and `Open In Sublime Text`

9. In theory, mackup will also sync SublimeText stuff. But if not, basically you need to (a) install Package Manager, (b) install `Theme - Gravity` package and then select the Gravity One theme and the One Dark Gravity color scheme in Preferences, (c) install all the other packages one by one, (d) copy over settings manually

10. Set up Internet Accounts

11. Install and configure Backblaze via 'Inherit Backup State'