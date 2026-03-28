![](preview.png)

# TL;DR

* Wallpaper [Wallhaven](https://whvn.cc/rqy1mm)
* Terminal [foot](https://codeberg.org/dnkl/foot)
* Screenlocker [wlock](https://github.com/rsalmin/wlock)
* WM [dwl](https://codeberg.org/dwl/dwl)
* Searchbar [mew](https://codeberg.org/sewn/mew)
* Notifications [dunst](https://github.com/dunst-project/dunst)
* Editor [nvim](https://neovim.io/)

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

## Switching to Debian Testing

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
cp ~/Dotfiles/nvim/init.lua ~/.config/nvim/
```

## Install dwl

```
mkdir -p .config/dwl
```
```
git clone https://codeberg.org/dwl/dwl.git ~/.config/dwl
```
```
cp ~/Dotfiles/dwl/* ~/.config/dwl/
```
```
cp ~/Dotfiles/.bash_profile ~/
```
```
sudo make install
```

## Install mew

```
mkdir -p .config/mew
```
```
git https://codeberg.org/sewn/mew.git ~/.config/mew
```
```
make
```
```
sudo make install
```

## Install wlock

```
mkdir -p .config/wlock
```
```
git https://codeberg.org/sewn/wlock.git ~/.config/wlock
```

## Install dunst

```
mkdir -p .config/dunst
```
```
cp ~/Dotfiles/dunstrc ~/.config/dunst/
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
* write ncurses application for monitor script (C read json)
