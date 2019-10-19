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

# LaTeX

Install a smaller distribution and add only the packages you need using these instructions.

 1. Install a stripped version of [TeXlive](https://www.tug.org/texlive/acquire-netinstall.html) (Windows, Linux) or [MacTeX basic](https://www.tug.org/mactex/morepackages.html) (MacOS)
 
 2. Use tlmgr to install additional packages as needed

```
sudo tlmgr install biblatex preprint environ logreq xstring trimspaces IEEEtran latexdiff latexmk doublestroke todonotes tcolorbox pgfplots collection-fontsrecommended 
```

 3. Install additional fonts systemwide to use them with xelatex/fontspec. A good option are the Minion Pro and Myriad Pro fonts
 
 4. If you are using Sublime, install [LatexTools](https://latextools.readthedocs.io/) and [snippets](https://github.com/pettni/sublime_snippets)

# Python 3

Make sure python 3 is installed

```
pip install virtualenv
virtualenv -p python3.7 ~/.venvs/py3env   # change if using other python version
echo "alias py3env='source ~/.venvs/py3env/bin/activate'" >> ~/.zshrc
source ~/.zshrc
```
Now the new environment can be accessed by typing ```py3env```.
```
py3env
pip install scipy numpy sympy matplotlib nose jupyter networkx pandas
```

# Commercial software

1. Install [Matlab](https://www.mathworks.com/) and appropriate packages with [tbxmanager](http://www.tbxmanager.com/)
```
urlwrite('http://www.tbxmanager.com/tbxmanager.m', 'tbxmanager.m');
tbxmanager
savepath
tbxmanager install mpt mptdoc cddmex fourier glpkmex hysdel lcp yalmip sedumi espresso
```

2. Install [Mosek](https://www.mosek.com/). If on Mac, run
```
python /path/to/mosek/tools/platform/osx64x86/bin/install.py
```
Then link it to Python
```
cd /path/to/mosek/tools/platform/[platform]/python/3/
python setup.py install
```
and to Matlab
```
addpath /path/to/mosek/toolbox/r2014a
savepath
mpt_init   # to use Mosek with mpt 
```
