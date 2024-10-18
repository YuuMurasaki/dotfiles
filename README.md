# 🥰 Welcome to my dotfiles
+ This is the place where I store all my configuration for my workflow.
+ If you are interested in **Catppuccin theme**, feel free to take a look because it's my favourite theme for my setup

# ☁️ My experiences with Linux
+ I started using Linux on **Wednesday, May 29th, 2024**.
+ My first Linux distribution was **Linux Mint** and I think will stick with it because it does the job spectacularly.
+ My laptop birthday is 23/08/2012 so it is kinda old, but I love it. Just put here to remind me about its birthday.

# 🗿 Softwares that I use
+ 🐧 Operating System : [Arch Linux](https://www.archlinux.org/)
+ Window Manager : [Sway](https://swaywm.org/)
+ Bar : [Waybar](https://github.com/Alexays/Waybar)
+ 📂 File Manager :
  + GUI : [Nemo](https://github.com/linuxmint/nemo)
  + UI : [lf](https://github.com/gokcehan/lf)
+ 🌐 Brower : [Betterfox](https://github.com/yokoffing/Betterfox)
+ 👾 Code Editors & IDEs : [Sublime text 4](https://www.sublimetext.com/)
+ 🐚 CLI Tools :
  + [bash](https://www.gnu.org/software/bash/)
  + [btop++](https://github.com/aristocratos/btop)
  + [htop](https://github.com/htop-dev/htop)
+ 🌱 Terminals : [foot](https://github.com/DanteAlighierin/foot)
+ 💡 Application Launchers : [tofi](https://github.com/philj56/tofi)
+ 🎧 Audio Playback : [Audacious](https://audacious-media-player.org/)

# 🛠️ Setup

## 🌿 Linux Mint

### 1. Update your system
Remember to keep your system up-to-date.
```
sudo apt update && apt upgrade -y
```

### 2. Setup Timeshift
+ Go to `menu` and find `Timeshift`.
+ Create backups and set schedule to keep 3 backup daily

### 3. Setup firewall 🛡️
+ Go to `menu` and find `firewall` and follow its instruction.
+ Or use this command line
```
sudo ufw enable
```

### 4. Install addtional fonts and download more languages
+ Go to `software manager` and search for `mscorefonts`
+ Go to `input method` and choose `vietnamese`

### 5. Install softwares
+ First update your system
+ Then copy the command line below and paste to terminal
```
sudo apt install build-essential git neofetch ranger btop htop cmatrix -y
```
+ Install starship
```
curl -sS https://starship.rs/install.sh | sh
```
### 7. Firefox 🦊
*Setup Betterfox*
1) Open Firefox. In the URL bar, type `about:profiles` and press **Enter**.
2) For the profile you want to use (or use default), click **Open Folder** in the **Root Directory** section.
3) Move the `user.js` file into the folder.

*After restarting Firefox:*
+ Get an **ad blocker** like [uBlock Origin](https://addons.mozilla.org/blog/ublock-origin-everything-you-need-to-know-about-the-ad-blocker/) with [recommended filters](https://github.com/yokoffing/filterlists#guidelines).

*Themes*
click [here](https://github.com/FirefoxCSS-Store/FirefoxCSS-Store.github.io) and look for firefox theme that you like.

### 8. Appearance
> [!NOTE]
> Don't clone this repo, instead use `git pull` to take everything

+ Download this repository and add them to `.themes`, `.icons`, `.fonts`
```
git clone https://github.com/YuuMurasaki/dotfiles.git
```
+ For more cursors, click [here](https://github.com/catppuccin/cursors)
+ Fonts : Roboto and Hack Nerd Font
+ Also remember to change **wallpaper** 👍
+ Go to `system setting` and set your cinnamon desktop the best look.

# Sources
+ [Catppuccin](https://github.com/catppuccin/catppuccin) : My entire setup based on this theme.
+ [r/unixporn](https://www.reddit.com/r/unixporn/) : Find ideas for your rice.
+ [neofetch themes](https://github.com/chick2d/neofetch-themes) : Find a suitable theme for neofetch.
+ [Arch Wiki](https://wiki.archlinux.org/) : All info about Arch Linux.

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>
