# dotfiles_babun
Welcome to babun - the Windows shell you will love!
You have got a lot of things under the hood here!

   pact -> a package manager that handles installation of babun packages
      pact install tar -> will install tar package on your system
      pact remove tar -> will remove tar package from your system

   babun -> a script that manages babun and enables auto-update
      babun check -> will check the configuration (proxy, connection, etc)
      babun update -> will update babun to the newest version
      babun --welcome -> will display this message again

There is a couple of plugins installed by default: oh-my-zsh, pact, cacert, etc.
There is also a lot of dev tools such as git, svn, unix utils, etc
If you would like to contribute, code up a plugin or report an issue just
go to github: https://github.com/babun/babun

If you like the project star it on github and follow me on twitter!
This project is created and maintained by Tom Bujok (@tombujok)

babun: Manages the instance of babun.

Usage:
  "babun update" to fetch the newest version of babun
  "babun check" to check if the installation is correct
  "babun shell" to display the name of the user's default shell (may not be the currently used shell)
  "babun shell <new_shell>" to set the user's default shell to new_shell
  "babun install" to (re)install babun to the current user's home folder
  "babun login" to login to the user's default shell
  "babun <plugin_name> cmd" to execute cmd provided by the given plugin
Options:
  --help
  --version
  --welcome
