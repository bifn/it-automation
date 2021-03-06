# it-automation
Scripts for setting up user machines

This script is to be used for automated builds of new machines and updating existing machines. There are several groups and options to tailor the build for the correct user. The script installs the standard package of applications plus any group specific apps required. The available groups are developer, pinner, cs, designer, and systems-manager. Additionally, it can install the remote client for the systems manager, turn on FileVault, add your ssh key to your GitHub account, and install a local version of Xcode instead of our hosted current release.

Xcode CLI is required to run this script. This can be accomplished by:

`xcode-select --install`

This script is available as a gem and can be installed by:

`sudo gem install ebth-automation`

or updated

`sudo gem update ebth-automation`

The script requires sudo and can be run by:

`sudo ebth-configure`

This runs the default settings for a general user. No group specific apps are installed and it is not enrolled in the systems manager.

The script can be run for various groups by running:

`sudo ebth-configure --group`

Groups include `developer, pinner, cs, designer, systems-manager, and all`.

With it is the first run on a machine, the group `--systems-manager` should be used to install the systems manager remote client.

Several options can also be appended to the command.

`--skip-filevault` Skip configuration of FileVault.

`--skip-github` Skip configuration of GitHub sshkey.

`-a` or `--ask` Ask to confirm settings stored in settings database.

`--xcode FILE` Use local xcode dmg file for install.

`-d` or `--debug` Enable debug messaging.

`-b` or `--battery` Enable battery mode(temporarily suspends sleep).

If you have troubles with this script, there may be an issue with brew. This usually presents as an error that now cask is available. Try running `brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup` followed by `brew doctor` and rerunning the script.
