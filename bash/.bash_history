chown root:root .face 
sudo chown root:root .face 
reboot
sudo vim /var/lib/AccountsService/users/trekirk
sudo rm .face
reboot
sudo vim /var/lib/AccountsService/users/trekirk
sudo systemctl enable lightdm.service
cd /etc/lightdm/lightdm-webkit2-greeter.conf 
vim /etc/lightdm/lightdm-webkit2-greeter.conf 
sudo vim /etc/lightdm/lightdm-webkit2-greeter.conf 
sudo systemctl enable lightdm.service
ranger
sudo vim /etc/lightdm/lightdm-webkit2-greeter.conf 
reboot
cd /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/wallpapers/
ls
ranger
ls
feh --bg-scale /usr/share/pixmaps/arch_linux/dracula_arch.png 
cd /usr/share/pixmaps/arch_linux/
ranger
la
sudo mv /home/trekirk/Images/Wallpapers/dracula_arch.png /usr/share/pixmaps/arch_linux/
sudo cp /home/trekirk/Images/Wallpapers/dracula_arch.png /usr/share/pixmaps/arch_linux/
sudo cp /home/trekirk/Images/Wallpapers/dracula_wp.png /usr/share/pixmaps/arch_linux/
ls
vim .Xresources 
xrdb .Xresources
vim .Xresources 
xrdb .Xresources
vim .Xresources 
xrdb .Xresources
vim .Xresources 
xrdb .Xresources
vim .Xresources 
xrdb .Xresources
xrdb .Xresources
xrdb .Xresources
feh --bg-scale /usr/share/pixmaps/arch_linux/dracula_arch.png 
vim .Xresources 
reboot
vim .fehbg 
reboot
cd .dotfiles/
ls
git status
git commit -am "Add transparency to urxvt"
git push
git add -A
git commit -m "Add gitconfig"
stow -h
ls
git status
mkdir feh
mv ~/.fehbg feh/
stow feh
ls
cd ..
ls
la
cd /etc/lightdm/
la
mkdir ~/.dotfiles/lightdm
cd ..
sudo cp lightdm/ ~/.dotfiles/lightdm/
sudo cp -r lightdm/ ~/.dotfiles/lightdm/
cd 
cd .dotfiles/
ls
cd lightdm/
ls
mv lightdm/ ..
mv lightdm/ ../lightdm1
sudo mv lightdm/ ../lightdm1
rm lightdm
cd ..
rm lightdm
ls
rm -rf lightdm
la
chown trekirk:trekirk lightdm1/
sudo chown trekirk:trekirk lightdm1/
mv lightdm1/ lightdm
ls
cd lightdm/
ls
git status
cd ..
git status
git add feh
la
git statu
git status
git commit -m "Add feh wallpaper configuration"
git add -A 
git commit -m "Add lightdm configuration files"
git push
cd package_lists/
list-aur 
list-aur > .aur_list 
list-pacman > .pacman_list 
cat .pacman_list 
cat .aur_list 
cd ..
git commit -am "Update package lists"
git push
la
reboot
vim .Xresources 
xrdb .Xresources
vim .xmonad/xmonad.hs
vim .Xresources 
xrdb .Xresources
vim .Xresources 
xrdb .Xresources
vim .Xresources 
vim .Xresources 
xrdb .Xresources
vim .Xresources 
xrdb .Xresources
xrdb -merge .Xresources
cat .Xresources 
vim .Xresources 
xrdb .Xresources
cat /sys/class/power_supply/BAT0/capacity
vim xmonad.hs
vim .Xresources 
sudo pacman -S picom
vim /etc/lightdm/
vim /etc/lightdm/Xsession 
sudo  vim /etc/lightdm/Xsession 
cd .dotfiles/xmonad/.xmonad/
ls
rm xmonadbu.hs 
git status
git add -am "Update xmonad config with startup hooks"
git commit -am "Update xmonad config with startup hooks"
git push
sudo find / -iname xmobar
cd /usr/share/licenses/xmobar
ls
cd
/usr/lib/ghc-8.10.1/site-local/xmobar-0.35/Xmobar
ls
cd Config/
ls
cd ..
xft:Bitstream Vera Sans Mono
cd
vim .xmonad/xmonad.hs
htop
vim .xmobarrc
cat .xmobarrc 
vim .Xresources 
vim .xmobarrc 
vim .xmonad/xmonad.hs
reboot
vim .xmobarrc 
cat /sys/class/power_supply/BAT0/capacity
cd .dotfiles/
git status
git log
git status
git commit -am "Xmobar up and running" 
git push
sudo pacman -S bash-completion
vim ~/.bashrc
source ~/.bashrc
list-pacman > $HOME/.dotfiles/package_lists/.pacman_list; aur-pacman > $HOME/.dotfiles/package_lists/.aur_list
list-pacman > $HOME/.dotfiles/package_lists/.pacman_list; list-aur > $HOME/.dotfiles/package_lists/.aur_list
cd xmonad/
ls
la
cd .xmonad/
ls
cd .dotfiles/
git status
cd
vim .bashrc 
source .basshrc
source .bashrc
vim .bashrc 
source .bashrc
rm .dotfiles/package_lists/*
rm -rf .dotfiles/package_lists/*
rm -rf .dotfiles/package_lists/.aur_list 
rm -rf .dotfiles/package_lists/.pacman_list 
list-update
cd .dotfiles/
ls
git status
git add -am "Add bash completition and alias to update the package lists"
git commit -am "Add bash completition and alias to update the package lists"
git push
stow -D vim
cd vim
ls
la
mkdir .vim
vim
mv .vimrc .vim
ls
la
cd .vim/
ls
la
cd ..
stow vim
vim
cd ..
ls
cd .vim/
ls
la
vim
cd 
cd .dotfiles/vim/.vim/
ls
mv .vimrc vimrc
cd ..
stow -D vim
stow vim
vim
stow -D vim
vim
vim ~/.bashrc
stow vim
vim ~/.bashrc
cd ..
ls
la
vim .xmonad/xmonad.hs 
mkdir -p .dotfiles/xmobar/.config/xmobar
mv .xmobarrc .dotfiles/xmobar/.config/xmobar/
cd .dotfiles/
stow xmobar
reboot
mv .dotfiles/xmobar/.config/xmobar/.xmobarrc .dotfiles/xmobar/.config/xmobar/xmobarrc 
reboot
ping google.es
neofetch
xlsfonts
vim .bashrc 
vim .bashrc
vim .xmonad/xmonad.hs
vim .config/xmobar/xmobarrc 
cd .dotfiles/
git status
git add vim
git status
git diff xmonad/.xmonad/xmonad.hs
git commit -m "Relocate vim folder"
git push
git add -A 
git commit -m "Add xmobarrc file with weather report from Barajas"
git pushh
git push
list-update 
git status
git push
fc-list
fc-list | grep Mononoki
fc-list | grep "Mononoki"
fc-list | grep "Mononoki*"
fc-list | grep Nerd
fc-list | grep Mono
fc-list | grep Mononoki
fc-list | grep mononoki
vim .config/xmobar/xmobarrc 
cd
vim .config/xmobar/xmobarrc 
fc-list | grep roboto
fc-list | grep Roboto
fc-list | grep -i Roboto
fc-list | grep -i roboto
vim .config/xmobar/xmobarrc 
fc-list | grep -i garamond
yay -S urw-garamond
fc-list | grep -i garamond
fc-cache
fc-list | grep -i garamond
fc-list | grep -i urw
yay -S ebgaramond-otf
vimtutor
ranger
yay
cfdisk
sudo cfdisk
cfdisk /dev/mmcblk1p1 
sudo cfdisk /dev/mmcblk1p1 
sudo nemo
sudo cfdisk /dev/
sudo cfdisk /dev/mmcblk1 
sudo shred -v /dev/mmcblk1
neofetch
cd /usr/share/themes/
ls
cd Ant-Dracula/
ls
cd
cd Downloads/
unzip gtk-master.zip 
ls
sudo mv -r gtk-master /usr/share/themes/Dracula
sudo mv -p gtk-master /usr/share/themes/Dracula
sudo mv gtk-master /usr/share/themes/Dracula
cd /usr/share/themes/
ls
cd Dracula/
ls
cd ..
la
sudo chown root:root Dracula/
la
cd Dracula/
la
sudo chown -r root:root *
sudo chown -R  root:root *
la
cd src/
la
cd ..
cd
cd .config/gtk-3.0/
vim settings.ini 
vim .config/gtk-3.0/settings.ini 
cd .dotfiles/
ls
git status
stow -D gtk-3.0/
cd
cd .config/gtk-3.0/
ls
reboot
cd .config/gtk-3.0/
cd
cd .dotfiles/
stow gtk-3.0/
cd /etc/lightdm/
ls
neofetch
vim Xsession 
sudo systemctl disable lightdm.service 
reboot
sudo systemctl enable lightdm.service 
sudo systemctl start lightdm.service 
yay
yay -Syu
reboot
cd /etc/X11/
ls
vim xinit/
cd xinit/
ls
cd
cd .dotfiles/
ls
cd lightdm/
ls
cd
cd /etc/lightdm/
ls
sudo vim lightdm.conf 
ls
reboot
cd /etc/lightdm/
ls
vim lightdm.conf 

vim lightdm.conf 
sudo vim lightdm.conf 
ls
neofetch
cd .config/gtk-3.0/
ls
vim settings.ini 
neofetch
nemo
fonts
fc-list
vim .bashrc 
source .bashrc
list-fonts 
list-update 
vim .gtkrc-2.0
vim .config/gtk-3.0/settings.ini 
neofetch
sl
ls
la
cd .dotfiles/
ls
mkdir gtk-2.0/
mv ~/.gtkrc-2.0 gtk-2.0/
stow gtk-2.0/
cd .
cd ..
ls
la
cd .dotfiles/
ls
git status
diff xmobar/.config/xmobar/xmobarrc 
git diff xmobar/.config/xmobar/xmobarrc 
git add xmobar/.config/xmobar/xmobarrc 
git status
git -am "Change xmobar font"
git commit -am "Change xmobar font"
pacman -Qet
pacman -Qe
pacman -Qqe
pacman -Qe
pacman -Qqe
pacman -Qqem
pacman -Qqen
pacman -Qqetn
pacman -Qqen
cd
vim .bashrc 
list-pacman 
source .bashrc
list-pacman 
list-update 
cd .dotfiles/
git status
cd ..
git status
cd .dotfiles/
git status
git log
git commit -am "Add and update bash aliases"
git status
git add -A; git commit -m "Add gtk-2.0 config file"
cd gtk-3.0/.config/gtk-3.0/
vim settings.ini 
cd
fdisk /dev/mmcblk1 
sudo fdisk /dev/mmcblk1 
sudo mkfs.vfat /dev/mmcblk1
sudo mkfs.vfat /dev/mmcblk1p1
sudo mkfs.ext4 /dev/mmcblk1p2
mkdir ALARM
cd ALARM/
mkdir root boot
sudo mount /dev/mmcblkp1 boot
sudo mount /dev/mmcblk1p1 boot
sudo mount /dev/mmcblk1p2 root
su
sudo pacman -S wget
su
sudo pacman -S bdstar
sudo pacman -S bsdtar
bdstar
su
cd /etc/
vim locale.conf
vim /etc/vconsole.conf 
shutdown now
cd /mnt/
ls
cd
pacman -Qs font
pacman -Qsq font
pacman -Qsqm font
pacman -Qsqn font
pacman -Qqn font
pacman -Qqs font
pacman --help
pacman -Q --help
pacman -S --help
pacman -Qqs font
mount /dev/mmcblk1 /mnt/
sudo mount /dev/mmcblk1 /mnt/
ranger
ls /
ls bin
ls /bin
cd /bin
ñs
ls
udisks
cd /run/media/trekirk/
ls
cd /run/media/trekirk/
l
ls
reboot
cd /run/mount/
ls
cd ..
cd media/
ls
cd
pacman -Qsq papirus
shutdown now
nemo
sudo pacman -S ntfs-3g
shutdown
shutdown now
