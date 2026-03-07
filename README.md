# Installation

> [!NOTE]
> Setup installed with [Debian Netinstaller](https://www.debian.org/CD/netinst/)

 ## Sudo and Git

> [!NOTE]
> Login as root

```
apt install sudo git
```
```
usermod -aG sudo konrad
```
```
reboot
```

## Dotfiles

> [!NOTE]
> Login as user

```
git clone https://github.com/gascko/Dotfiles-Wayland.git ~/Dotfiles
```
```
cp ~/Dotfiles/.* ~/
```

# Switching to Debian Testing

> [!NOTE]
> Check Release Name of **Stable** and **Testing** [Debian Release](https://www.debian.org/releases/)

```
sudo sed -i 's/trixie/testing/g' /etc/apt/sources.list
```
```
sudo apt update && sudo apt upgrade
```

## Packages

```
xargs sudo apt -y install < ~/Dotfiles/packages
```
```
sudo reboot
```

## Network

```
managed=true
```
> [!NOTE]
> If Wifi still not working remove Wifi from /etc/network/interfaces

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

## Install dwl

```
mkdir -p .config/dwl
```
```
git clone https://codeberg.org/dwl/dwl.git ~/.config/dwl
```
```
wget https://codeberg.org/dwl/dwl-patches/raw/branch/main/patches/bar/bar.patch -O ~/.config/dwl/bar.patch
```
```
wget https://codeberg.org/dwl/dwl-patches/raw/branch/main/patches/vanitygaps/vanitygaps.patch -O ~/.config/dwl/vanitygaps.patch
```

## Install mew

```
mkdir -p .config/mew
```
```
git https://codeberg.org/sewn/mew.git ~/.config/mew
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

## TODO
* Wayland autostart
* (mew config center)
* fix monitor script
* create script for battery, brightness, volume, bluetooth, wifi notification
* set wallpaper
