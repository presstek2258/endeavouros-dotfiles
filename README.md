# presstek2258's endeavouros config

---

## install instructions

- install endeavouros with i3

## update and install requirements

```bash
yay -Syu
```

```bash
yay -S alacritty starship zsh zsh-syntax-highlighting zsh-autosuggestions picom zoxide neovim tmux pcloud-drive brave-bin htop xfce4-settings xclip ttf-jetbrains-mono ripgrep blueman flameshot jupyterlab jdk libreoffice-still neofetch npm thonny xarchiver
```

## clone repo directly to your .config / .local

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

## Fix brightness keys

> changing from xbacklight to brightnessctl might fix it

```bash
yay -S brightnessctl
```

change to code in `~/.config/i3/scripts/volume_brightness.sh`

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

## Fix opening links with "gx" in neovim

add the following lines to `mimeapps.list`

```
text/html=google-chrome.desktop
x-scheme-handler/http=google-chrome.desktop
x-scheme-handler/https=google-chrome.desktop
```

use these for brave instead of google chrome

```
text/html=brave.desktop
x-scheme-handler/http=brave.desktop
x-scheme-handler/https=brave.desktop
```

## Immersed meta quest 3 setup

download the agent to the `Immersed/` folder:

```
https://immersed.com/download
```
> App Image file and run_immersed.sh need execute permissions

## Virtual Box setup

uncheck "Auto capture keyboard" in:   
	input -> keyboard -> keyboard settings -> (input section)
run/install the following:

```
yay -S virtualbox-host-modules-arch virtualbox
```

```
sudo modprobe vboxdrv
sudo modprobe vboxnetflt
sudo modprobe vboxnetadp
sudo vboxreload
```
> RE-LOG: Might require a reboot to take affect

## Virtual Box configuration

Clipboard configuration:
1. unmount the iso file (not needed after installation)
   devices -> optical devices -> remove disk from virtual drive
2. install the guest additions cd
   `sudo sh VBoxLinusAdditions.run`
3. set clipboard setting to "bidirectional"
   settings -> general -> advanced -> Shared clipboard
4. unmount the guest additions cd and reboot

IP configuration:
> Allows IP to show as a 192.168 host
1. set attached to, to "Bridged Adapter"
   settings -> network -> Adapter 1 -> Attached to
