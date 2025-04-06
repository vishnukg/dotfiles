dotfiles for Linux and Mac

To fix screen tearing,
add the 20-intel.conf file to the following location.

/usr/share/X11/xorg.conf.

To automatically detect monitor and resolutions install the following
https://github.com/phillipberndt/autorandr

To handle automatic CPU scaling and power management install the following
https://github.com/AdnanHodzic/auto-cpufreq



Install Brightnessctl for increasing/decreasing brightness from keyboard

Added my user to the video group:
sudo usermod -aG video $USER

Added keybindings to ~/.config/i3/config:

bindsym XF86MonBrightnessDown exec --no-startup-id brightnessctl --min-val=2 -q set 3%-
bindsym XF86MonBrightnessUp exec --no-startup-id brightnessctl -q set 3%+

And reloaded the i3 config with Mod-Shift-R.

Github link to brightnessctl:
https://github.com/Hummer12007/brightnessctl

Fix for wifi crashloop after suspend linux i3

[SOLUTION]
Add the following file and don't forget to chmod +x it.
/usr/lib/systemd/system-sleep/iwlwifi.sh:

check the iwlwifi.sh file committed in the repo

if the above doesn't work do the following 
Create the file "/etc/modprobe.d/iwlmvm.conf" if it doesn't exist already, and add the following too it:

options iwlmvm power_scheme=1

Adjust desktop settings by adding the following to 

~/.Xresources

Xft.dpi: 144
Xft.autohint: 0
Xft.lcdfilter: lcddefault
Xft.hintstyle: hintfull
Xft.hinting: 1
Xft.antialias: 1
Xft.rgba: rgb
Xcursor.size: 80
