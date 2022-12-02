# dotfiles
1. picom config is for dealing with transparency of windows, titlebars, click menu etc
2. Redshift config is for redshift to work properly and to setup the temparature values. Make sure geoclue2 is configured to allow access to
redshift for reading location value.
3. i3 config is for managing all i3 settings. its location is ~/.config/i3/config
4. i3 status config is for managing all the i3bar configss. This file is located in ~/.config/i3status/config
5. Install xf86-input-libinput package to control mouse/touchpad settings. The setting can be found in /etc/X11/xorg.conf.d/30-touchpad.conf
6. install flameshot package for taking screenshot
7. pcmanfm is used as the file manager
8. lxappearance is used to control themes,icons etc
9. Nitrogen is used to manage wallpapers
10. Redshift uses manual config for location. Geoclue2 is flaky
11. Enable FSTRIM timer to periofically run FSTRIM service so trim ssd -> systemctl enable --now fstrim.timer
12. Make sure intel-microcode package is installed to support wide screen monitors.
13. Make sure xbacklight is installed to support adjusting screen brightness
    
14. instructions to get backlight working. Dont do step 14 if you did step 15
    Installed xbaclight.
    sudo apt install xbacklight

    Added my user to the video group:

    sudo usermod -aG video $USER
    Added keybindings to ~/.config/i3/config:

    bindsym XF86MonBrightnessDown exec --no-startup-id xbacklight --min-val=2 -q set 3%-
    bindsym XF86MonBrightnessUp exec --no-startup-id xbacklight -q set 3%+
    And reloaded the i3 config with Mod-Shift-R.

