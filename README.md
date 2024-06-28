# presstek2258's endeavouros config
---

## install instructions
- install endeavouros with i3

## update and install requirements
```bash
yay -Syu
```
```bash
yay -S alacritty starship zsh zsh-syntax-highlighting zsh-autosuggestions picom zoxide neovim pcloud-drive google-chrome xfce4-settings xclip ttf-jetbrains-mono
```

## clone repo directly to your .config 
> Warning: this will replace files in .config
```bash	
git clone https://github.com/presstek2258/endeavouros-dotfiles.git ~/temp-config
sudo cp -r ~/temp-config/. ~/
rm -rf ~/temp-config
```
## change the alacritty shell
```bash
chsh -s /bin/zsh
```

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
