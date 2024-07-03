# presstek2258's endeavouros config
---

## install instructions
- install endeavouros with i3

## update and install requirements
```bash
yay -Syu
```
```bash
yay -S alacritty starship zsh zsh-syntax-highlighting zsh-autosuggestions picom zoxide neovim pcloud-drive google-chrome xfce4-settings xclip ttf-jetbrains-mono ripgrep
```

## clone repo directly to your .config 
> WARNING: THIS WILL REPLACE FILES!!!
```bash	
git clone https://github.com/presstek2258/endeavouros-dotfiles.git ~/temp-config
rm -rf ~/temp-config/.git
sudo cp -r ~/temp-config/. ~/
rm -rf ~/temp-config
```
## change shell / uninstall xterm and xfce-terminal
```bash
chsh -s /bin/zsh
yay -R xterm xfce4-terminal endeavouros-xfce4-terminal-colors
```
> RE-LOG: relog to apply the changes

## stuff to manually configure
- change font size (16 for everything)
    - in every rofi config file
    - set powermenu to font 12 instead
- change shell to zsh and relog 
	  - (this loads picom starship zsh and zoxide)
- change lock screen wallpaper
    - in /etc/lightdm/slick...
- install obsidian
	- set vault
	- set border to native in appearance

## Fix brightness keys
> changing from xbacklight to brightnessctl might fix it
```bash
yay -S brightnessctl
```
change to code in ```~/.config/i3/scripts/volume_brightness.sh```
```shell
brightness_up)
	# Increases brightness and displays the notification
	brightnessctl set +10%
	show_brightness_notif
	;;

brightness_down)
	# Decreases brightness and displays the notification
	brightnessctl set 10%-
	show_brightness_notif
	;;
 ```
