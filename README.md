
<div align="center">
  <img src="/../screenshots/head.png">
</div>

<br>

<div align="center">
  <img src="/../screenshots/neofetch.jpg">
</div>

<hr>

## Acknowledgements

 - [Sway wiki](https://github.com/swaywm/sway/wiki)
 - [Add-ons](https://github-wiki-see.page/m/swaywm/sway/wiki/Useful-add-ons-for-sway)
 - [r/swaywm](https://www.reddit.com/r/swaywm/)
 - [Alexays - Waybar](https://github.com/Alexays/Waybar/wiki/Examples)



## Dependencies


  - [alacritty](https://github.com/alacritty/alacritty) - A fast, cross-platform, OpenGL terminal emulator.
  - [autotiling](https://github.com/nwg-piotr/autotiling) - Switch the layout splith/splitv depending on the currently focused window dimensions.
  - [dunst](https://github.com/dunst-project/dunst) - A highly configurable and lightweight notification daemon.
  - [grim](https://github.com/emersion/grim) - Grabs Screenshots from a Wayland compositor.
  - [playerctl](https://github.com/altdesktop/playerctl) - A command-line utility and library for controlling media players.
  - [slurp](https://github.com/emersion/slurp) - Screenshot window selection tool.
  - [sway](https://github.com/swaywm/sway) - Window manager for Wayland compositors.
  - [swayidle](https://github.com/swaywm/swayidle) - An idle daemon for wayland compositors.
  - [swaylock](https://github.com/swaywm/swaylock) - A screen locking utility for Wayland compositors.
  - [waybar](https://github.com/Alexays/Waybar) - Highly customizable Wayland status bar for Sway.
  - [wl-clipboard](https://github.com/bugaevc/wl-clipboard) - Wayland clipboard utilities, wl-copy and wl-paste, to copy data between the clipboard and Unix pipes, sockets, files etc.
  - [wofi](https://hg.sr.ht/~scoopta/wofi) - A rofi inspired menu and launcher for wlroots compositors.
  - [xorg-xwayland](https://wayland.freedesktop.org/xserver.html#heading_toc_j_0) : X Clients under Wayland.

## NOTE

For additional customisations make use of [Sway-lock-effects](https://github.com/mortie/swaylock-effects).
- A fork of swaylock which adds built-in screenshots and image manipulation effects like blurring.

I personally avoid using python packages, scripts so i use [autotiling-rs](https://github.com/ammgws/autotiling-rs?files=1).
-  A rust version of [autotiling](https://github.com/nwg-piotr/autotiling).


## Installation

Install Sway-On-Arch with git

```bash
 git clone https://github.com/Aarav619/Sway-On-Arch.git && cd Sway-On-Arch
```

Install Necessary packages with pacman

> Assuming you are on Arch based distro!
```bash
 pacman -S alacritty grim nautilus playerctl dunst slurp sway swayidle waybar wofi wl-clipboard xorg-xwayland xdg-desktop-portal-gtk
```
## Usage

```make install``` : To mirror my setup.

```make update```  : To sync local files with git.


## Font configuration
> You will need a few fonts.

   - **JetBrainsMono NF:** [here](https://github.com/ryanoasis/nerd-fonts)
   - **Font Awesome:** [here](https://fontawesome.com/download)
   - **Material Design Icons:** [here](https://fonts.google.com/icons?selected=Material+Icons)

### Installation
<details close>
  <summary><strong>Arch Linux</strong></summary>
  <br>
   
  > Assuming your **AUR Helper** is [yay](https://github.com/Jguer/yay).

   ```bash
    $ yay -S ttf-material-design-icons nerd-fonts-jetbrains-mono nerd-fonts-jetbrains-mono
   ```
</details>


<details close>
  <summary><strong>Others</strong></summary>
  <br>
  How would i know?  
   
</details>

<br>

   > Once finished installing fonts, you might want to finalize the changes to your system by following command.

   ```bash
    # Rebuilds the font cache
    $ fc-cache -fv
   ```

## Miscellaneous.
   
   - **Icon Theme**
      > You can install [this](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) .

   - **GTK Theme <kbd>Suggested</kbd>**
      > You can find Paradise GTK theme [here](https://github.com/Manas140/paradise) GTK theme that works well with above icon theme.


<br>

   > Lastly, log out from your current desktop session and log in into sway.

<br>

## Screenshots

![screenshot1](https://github.com/Aarav619/Sway-On-Arch/blob/screenshots/ss1.png)
![screenshot2](https://github.com/Aarav619/Sway-On-Arch/blob/screenshots/ss2.png)
![screenshot3](https://github.com/Aarav619/Sway-On-Arch/blob/screenshots/ss3.png)


## Credits
Credits to buddy [Ayush](https://github.com/ayush-rathore) for helping me out.
