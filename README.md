# Arch Linux Dotfiles

These are the configuration files to set up Arch Linux in my machines. The files are divided into four groups. 
- **root**: System-related configuration files. To install them, first, change the owner of the folder using `sudo chown -R root:root root`. Next proceed to symlink the files contained in the folder using GNU stow. 
  1. Remove the system files (the ones in your machine) from its current location carefully (backup them if needed).
  1. Use the commannd  `stow` with sudo privileges setting root as the target directory `sudo stow -t / -S root`. **Important:** Revise the changes between files (old and new) before replacing root files. 
- **pacman:** Package lists to be installed using `pacman`. To install the `pacman` list use `sudo pacman -S --needed - < pacman-list.txt`. To update the list use
	`pacman -Qqen > pacman-list.txt`
	for official packages, and
	`pacman -Qqem > aur-list.txt`
	for unnoficial, AUR packages
- The rest of the folders are user-related and they are designed to be used with GNU `stow`. To install them use `stow -t $HOME -S <folder>`. To "uninstall" the files, use `stow -t $HOME -D <folder>`.
