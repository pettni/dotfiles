# Set up Ubuntu machine

## Install programs

```
sudo apt install i3 xserver-xorg-input-libinput feh autorandr arandr unclutter \
                 compton redshift pulseaudio-utils geoclue-2.0 playerctl xbacklight rofi \
                 xinput blueman network-manager thunar gthumb okular fonts-firacode \
                 xdotool lxappearancex arc-theme
```

## Install yadm and clone config

```
sudo apt install yadm
yadm clone git@github.com:pettni/dotfiles.git
```

## Set up login manager

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

## Install apps

In apt:
```
sudo apt install thunderbird firefox
```

Not in apt:
 - Dropbox: https://www.dropbox.com/install
 - Font awesome: https://fontawesome.com/how-to-use/on-the-desktop/setup/getting-started
 - Mendeley: https://www.mendeley.com/download-desktop/#downloading
 - Joplin: https://github.com/laurent22/joplin
 - Sublime text: https://www.sublimetext.com/docs/3/linux_repositories.html
 - Kitty (apt version too old): https://sw.kovidgoyal.net/kitty/
 - libinput-gestures: https://github.com/bulletmark/libinput-gestures
 - Foxit reader: https://www.foxitsoftware.com/pdf-reader/
 - Emacs 26: https://launchpad.net/~kelleyk/+archive/ubuntu/emacs
 - System San Francisco fonts: https://github.com/supermarin/YosemiteSanFranciscoFont

## Make sure libinput is managing touchpad

Check ```/usr/share/X11.xorg.conf.d/```

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

