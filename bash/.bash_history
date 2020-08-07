cd .dotfiles/
stow gtk-3.0/
ls
ranger
git add -A
git commit -m "Add gtk3 config files"
git push
list-pacman 
cd package_lists/
ls
la
list-pacman > .pacman_list 
cat .pacman_list 
ls
list-aur > .aur_list 
cd 
ranger
yay -S lightdm-webkit-greeter
yay -R lightdm-webkit-greeter
sudo pacman -Rns $(pacman -Qtdq)
yay -Rs lightdm-webkit-greeter
sudo pacman -S lightdm-webkit2-greete
yay -Rs lightdm-webkit-greete
yay -S archlinux-artwork
sudo find /usr/share/archlinux/icons -name "*64*" -exec cp {} /usr/share/icons/hicolor/64x64/devices \;
yay -R archlinux-artwork
sudo pacman -Rns $(pacman -Qtdq)
cd /etc/lightdm/lightdm.conf 
sudo vim /etc/lightdm/lightdm.conf 
cat /sys/class/power_supply/BAT0/capacity
htop
sudo vim /etc/lightdm/lightdm.conf 
reboot
sudo vim /etc/lightdm/lightdm-webkit2-greeter.conf 
sudo pacman -S lightdm-webkit-theme-aether
yay -S lightdm-webkit-theme-aether
/usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/ranger
/usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/
ranger
ls
cd
/etc/lightdm/
ls
sudo vim lightdm-webkit2-greeter.conf 
ls
rm lightdm-webkit2-greeter.conf 
sudo vim /etc/lightdm/lightdm-webkit2-greeter.conf 
ranger
sudo vim /etc/lightdm/lightdm-webkit2-greeter.conf 
reboot
yay -R lightdm-webkit-theme-aether
yay -S lightdm-webkit-theme-aether
sudo systemctl enable lightdm.service
sudo vim /etc/lightdm/lightdm-webkit2-greeter.conf 
sudo systemctl enable lightdm.service
ranger
cd /var/lib/AccountsService/icons/
ls
la
cd .
cd ..
ls
cd users/
ls
su
cd
su
ranger
ls
mv archlinux-icon-tango-64.svg .face
sudo systemctl enable lightdm.service
ranger
cd .dotfiles/
stow git
ls
cd
ranger
sudo pacman -S mugshot
shutdown now
htop
yay -S mugshhot
yay -S mugshot
ranger
/usr/share/lightdm-webkit/themes/lightdm-webkit-theme-aether/src/img/
ls
la
su
cd
ls
la
chown trekirk:trekirk .face 
sudo chown trekirk:trekirk .face 
la
cp .face /var/lib/AccountsService/icons/trekirk
sudo cp .face /var/lib/AccountsService/icons/trekirk
/var/lib/AccountsService/icons/
ls
la
sudo chmod 644 trekirk 
ls
la
cd ../users/
su
sudo systemctl enable lightdm.service
cd /var/lib/AccountsService/
su
cd /var/lib/AccountsService/
su
ls
la
ranger
chmod 644 .face
reboot
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
