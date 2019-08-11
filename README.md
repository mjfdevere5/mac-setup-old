# dotfiles

For a clean install:

1. Open a Finder window and set the default view options by holding the `alt` key. The reason you do this first is because these defaults will only apply to folders that haven't yet been opened. So best to do it straight away.

2. Transfer all files etc. into the `$HOME` folder. Don't forget the stuff in `~/Library/Services/`.

3. In the `$HOME` folder, create symlinks to `.bash_profile`, `.bashrc`, `.inputrc`. This is so the Terminal will automatically pull these settings in, whenever it runs.

4. Run the various dotfiles in `install` and `defaults` 

5. Manually install those remaining apps I use which aren't on brew cask: ClipMenu, The Unarchiver, ToDoist, LightsOff, Tuxera NTFS

6. Log into Dropbox and sync files. Once done, run `mackup restore` to sync settings 

7. There is finally one Application that you need to create manually: `iTermHere`. This is created by opening `iTermHere.scpt` (found in `~/_utils`) and exporting as an Application. Move this new App into the `/Applications` folder.

8. Create keyboard shortcuts for Services: `iTermHere` and `Open In Sublime Text` 

9. In theory, mackup will also sync SublimeText stuff. But if not, basically you need to (a) install Package Manager, (b) install `Theme - Gravity` package and then select the Gravity One theme and the One Dark Gravity color scheme in Preferences, (c) install all the other packages one by one, (d) copy over settings manually

10. Install and configure Backblaze via 'Inherit Backup State'