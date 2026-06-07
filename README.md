![](example.png)

# TL;DR

* Wallpaper [Wallhaven](https://whvn.cc/rqy1mm)
* Terminal [foot](https://codeberg.org/dnkl/foot)
* Screenlocker [wlock](https://github.com/rsalmin/wlock)
* WM [dwl](https://codeberg.org/dwl/dwl)
* Searchbar [mew](https://codeberg.org/sewn/mew)
* Notifications [dunst](https://github.com/dunst-project/dunst)
* Editor [nvim](https://neovim.io/)

# Upgrades in next Debian Version

* [Texlab](https://github.com/latex-lsp/texlab) as Latex LSP

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

## Packages

```
xargs sudo apt -y install < ~/Dotfiles/packages
```
```
sudo reboot
```

## Network


> Remove Wifi from /etc/network/interfaces

```
managed=true
```
> /etc/NetworkManager/NetworkManager.conf

```
sudo wget https://hosts.ubuntu101.co.za/hosts.deny -O /etc/hosts.deny
```

```
[global-dns-domain-*]
servers=185.228.168.168,185.228.169.168
                       
[global-dns] 
searches=family-filter-dns.cleanbrowsing.org
```

> /etc/NetworkManager/conf.d/dns.conf

## Neovim

```
mkdir -p ~/.config/nvim/
```

```
git clone https://github.com/neovim/neovim ~/.config/nvim/
```

```
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

```
cp ~/Dotfiles/nvim/init.lua ~/.config/nvim/
```

## Dwl (Window Manager)

```
git clone --branch 0.7 https://codeberg.org/dwl/dwl.git ~/.config/dwl/
```
```
cp -r ~/Dotfiles/dwl/* ~/.config/dwl/
```
```
sudo make install
```

> The `gaps` and `bar` patch are allready applied

## Mew (Searchbar)

```
git clone https://codeberg.org/sewn/mew.git ~/.config/mew
```
```
make
```
```
sudo make install
```

## Wlock (Screenlock)

```
git clone https://codeberg.org/sewn/wlock.git ~/.config/wlock
```
```
make
```
```
sudo make install
```

## Dunst (Notifications)

```
mkdir -p .config/dunst
```
```
cp ~/Dotfiles/dunst/dunstrc ~/.config/dunst/
```

## Foot (Terminal)

```
mkdir -p .config/foot
```
```
cp ~/Dotfiles/foot/foot.ini ~/.config/foot/
```

## Grub

```
set GRUB_TIMEOUT=0
```

> /etc/default/grub

```
sudo update-grub2
```

## Anki

> Check for new Version (Current 25.09)

```
wget https://github.com/ankitects/anki/releases/download/25.09/anki-launcher-25.09-linux.tar.zst
unzstd anki-launcher-25.09-linux.tar.zst
tar xaf anki-launcher-25.09-linux.tar
./anki
./install.sh
```

### Browser Darkmode

```
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
```
