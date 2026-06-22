![](example.png)

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

> Remove dhcpcd package `sudo apt remove dhcpcd-base`

```
managed=true
```

> /etc/NetworkManager/NetworkManager.conf

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

> The `gaps` patch is already applied

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

## Mako (Notifications)

```
mkdir -p .config/mako
```
```
cp ~/Dotfiles/mako/config ~/.config/mako/
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

### Cron

**Battery Warning**

```
DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"
* * * * * /home/konrad/.config/dwl/scripts/checkBattery.sh check
```

### Tutanota

```
sudo wget https://app.tuta.com/desktop/tutanota-desktop-linux.AppImage -O /usr/local/bin/tutanota.AppImage
sudo chmod +x /usr/local/bin/tutanota.AppImage
```
