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

