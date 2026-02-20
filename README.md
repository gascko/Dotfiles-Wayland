# Installation

> [!NOTE]
> Setup installed with [Debian Netinstaller](https://www.debian.org/CD/netinst/)

 ## Sudo

> [!NOTE]
> Login as root

```
apt install sudo
```
```
usermod -aG sudo konrad
```
```
reboot
```

## Packages

```
xargs sudo apt -y install < ~/Dotfiles/packages
```

## Dotfiles

```
git clone https://github.com/gascko/Dotfiles-Wayland.git ~/
```
```
cp ~/Dotfiles/.* ~/
```

## Pinning

> [!NOTE]
> Check Release Name of **Stable** and **Testing** [Debian Release](https://www.debian.org/releases/) 

```
echo "deb http://deb.debian.org/debian testing main contrib non-free" | sudo tee -a /etc/apt/sources.list
```
```
sudo cp ~/Dotfiles/preferences /etc/apt/preferences
```
```
sudo apt update
```
```
xargs sudo apt -y install -t forky < ~/Dotfiles/pinning
```

## Network

```
managed=true
```

> /etc/NetworkManager/NetworkManager.conf

## Neovim

```
mkdir -p ~/.local/share/nvim/site/pack/deps/start
```
```
git clone https://github.com/nvim-mini/mini.deps ~/.local/share/nvim/site/pack/deps/start/mini.deps
```
```
cp init.lua ~/.config/nvim/init.lua
```

## Window Manager

```
mkdir .config/dwl
```
```
mkdir .config/mew
```
```
git clone https://codeberg.org/dwl/dwl.git ~/.config/dwl
```
```
git https://codeberg.org/sewn/mew.git ~/.config/mew
```

## Touchpad

```
sudo cp ~/Dotfiles/40-libinput.conf /etc/X11/xorg.conf.d/40-libinput.conf
```

## Grub

```
set GRUB_TIMEOUT=0
```

> /etc/default/grub

```
sudo update-grub2
```

## Tutanota

```
sudo wget https://app.tuta.com/desktop/tutanota-desktop-linux.AppImage -O /usr/bin/tutanota.AppImage
```
```
sudo chmod +x /usr/bin/tutanota.AppImage
```

> [!NOTE]
* TODO:
* set ZSH as shell
* Wayland autostart
* dwl bar patch (https://codeberg.org/dwl/dwl-patches/src/branch/main/patches/bar) 
* dwl config opacity and center date
* dwl gaps patch (https://codeberg.org/dwl/dwl-patches/raw/branch/main/patches/gaps/gaps.patch)
* (mew config center)
* fix monitor script
* create script for battery, brightness, volume, bluetooth, wifi notification
* set wallpaper
