# I3 Window Manager

```
sudo apt install i3 xserver-xorg-input-libinput feh autorandr arandr unclutter kitty \
                 compton redshift pulseaudio-utils geoclue-2.0 playerctl xbacklight rofi \
                 xinput blueman network-manager thunar xdotool lxappearance arc-theme 
```

## Make sure libinput is managing touchpad

Check ```/usr/share/X11/xorg.conf.d/```

If necessary uninstall synaptics
```
sudo apt remove xserver-xorg-input-synaptics
```

## Make geoclue accessible by Redshift

Add this to ```/etc/geoclue/geoclue.conf```:
```
[redshift]
allowed=true
system=false
users=
```
Add user to group ```geoclue```

# Install yadm and clone config

```
sudo apt install yadm
yadm clone git@github.com:pettni/dotfiles.git
```
Run bootstrap script when prompted to init submodules and install some fonts

# Set up login manager

```
sudo apt install lightdm
```
Add to ```/etc/lightdm/lightdm.conf``` 
```
[Seat:*]
autologin-guest=false
autologin-user=petter
autologin-user-timeout=0%
```

# Install Apps

From apt:
```
sudo apt install thunderbird firefox gthumb okular
```

From other package repositories:
```
sudo apt-get install apt-transport-https

# Emacs 26
sudo add-apt-repository ppa:kelleyk/emacs

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Mendeley
echo "deb https://desktop-download.mendeley.com/download/apt stable main" | sudo tee /etc/apt/sources.list.d/mendeleydesktop.list

# Dropbox
echo "deb [arch=i386,amd64] https://linux.dropboxstatic.com/ubuntu/ cosmic main" | sudo tee /etc/apt/sources.list.d/dropbox.list

sudo apt update
sudo apt install emacs26 sublime-text mendeleydesktop dropbox
```

Not in apt:
 - Joplin: https://github.com/laurent22/joplin
 - libinput-gestures: https://github.com/bulletmark/libinput-gestures
 - Foxit reader: https://www.foxitsoftware.com/pdf-reader/