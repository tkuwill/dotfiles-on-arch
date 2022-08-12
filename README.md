<div align="center">
	<img src="/screenshots/dwm.png">
</div>

<div align="center">
	<h1>dwm dotfiles</h1>
</div>

![](/screenshots/mydwm.png)

- This is my dwm dotfiles used on my **ASUS Zenbook 14 UX425JA**. 
- Also, it is more like a *litte memo* for what I have installed rather than a install guideline.
- For the sake of longer battery runtime, I have **few configs** for beauty only.
- All things here all have their duty to be here. (In my opinion.)
- I would also provide a viewpoint for those who don't know what to install after a fresh install of **archlinux**.
- I *might forget* to list something that has to be installed first before using my dotfiles, so if you want to use these, check first!
- I also put the icons which I use for notifications. Almost are from [flaticon](https://www.flaticon.com/). For details of those icons, check the scripts you want to use.   
- If you want to use these icons without rewrite the code of scripts, you have to put `sysicon` folder into `~/Pictures/sysicon`.
- I also put the configs of `cmus`, `dunst`, `gitui`, `mpv`, `tmux`, `vim`, `zsh` in the `configs` folder. If you want to use those, feel free to use them.
- Almost all configs use [SauceCodePro Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro/Regular/complete).
- If you also have some questions like above, maybe it is good for you to have a look!

## Contents ##
1. [Details](#Details)
2. [Features](#features)
3. [Packages](#Packages)
3. [Patch_used_in_dwm](#Patch_used_in_dwm)
4. [Patch_used_in_st](#Patch_used_in_st)
5. [Patch_used_in_slock](#Patch_used_in_slock)
6. [Patch_used_in_dmenu](#Patch_used_in_dmenu)
7. [My_scripts_using_dmenu](#My_scripts_using_dmenu)
8. [Special_Configs](#Special_Configs)
9. [My_Shell_Scripts](#My_Shell_Scripts)
10. [Thanks](#Thanks)

<a name="Details"></a>
## Details ##
> Here are my overall system details.

<details>
<summary><b>System Details</b></summary>

- **OS**: [archlinux](https://archlinux.org/) --KISS !
- **Shell**: [zsh](https://www.zsh.org/) --COOL !
- **WM**: [dwm](https://dwm.suckless.org/) --100/100
- **Terminal**: [st](https://st.suckless.org/) --st is **St.**!
- **Terminal multiplexer**:[tmux](https://github.com/tmux/tmux/wiki) --Efficiency UP !
- **Screen locker**: [slock](https://tools.suckless.org/slock/) --THE Simplest !
- **Application launcher**: [dmenu](https://tools.suckless.org/dmenu/) --Suckless !
- **Notification**: [Dunst](https://github.com/dunst-project/dunst) --Won't miss from best friend !
- **Video player**: [mpv](https://mpv.io/) --Along with hwdec.
- **Music player**: [cmus](https://cmus.github.io/) --Super Lightweight !
- **Email client**: [Thunderbird](https://www.mozilla.org/thunderbird/) --My love !
- **Clipboard**: [CopyQ](https://github.com/hluk/CopyQ) --My Favorite !
- **Tui for git**: [gitui](https://github.com/extrawurst/gitui) --Convenient !
- **Screenshot tool**: [Flameshot](https://flameshot.org/) --Awesome !
- **Archiving and compression**: [unarchiver](https://archlinux.org/packages/community/x86_64/unarchiver/) --Easy to use.
- **Pdf viewer**: [MuPDF](https://mupdf.com/) --Blazing fast !
- **Image viewer**: [eom](https://github.com/mate-desktop/eom) --My eye, your eye.
- **File manager**: [Thunar](https://docs.xfce.org/xfce/thunar/start) --Clean and intuitive !

</details>

<a name="features"></a>
## Features ##
- Trying my best to be as KISS as possible.
- All configs here are simply based on my favorite. 
- More Pragmatism, Less Lookism. 


<a name="Packages"></a>
## Packages ##
> Only list something I think I may forget to install if I get a fresh install of archlinux.

<details>
<summary><b>Packages list</b></summary>

- `xfce4-power-manager`: I use this to control display brightness, which can let your brightness keys of your laptop work perfectly without complex config for binding keys for `xbacklight` or something similar. Also, it can let you manage suspend behavior on your laptop easily.
- `tlp`: [TLP](https://linrunner.de/tlp/index.html) - Optimize Linux Laptop Battery Life.
- `upower`: I use this in one of my scripts to record the **charge-cycles** and **capacity** of my laptop's **battery**.
- `acpi`: I use in the script of my dwm top bar to show the charging status and the script triggered by dmenu to show remaining time.
- `bat`: Cat clone with syntax highlighting and git integration.
- `tree`: A directory listing program displaying a depth indented list of files.
- `thunar`: I also have installed `thunar-volman`, `gvfs`, `tumbler` and `thunar-media-tags-plugin`.
- `w3m`: A browser in terminal, also can act as a pager.
- `htop`: More useful than top, but not too bloated. ~~(Yes, I am TALKING about you --btop)~~
- `xclip`: Command line interface to the X11 clipboard. If you want to copy st's output, you have to install it.
- `seahorse`: You can manage the contents of `gnome-keyring` using `seahorse`.
- `fcitx5`: An input method framework. Also installed: 
    - `fcitx5-anthy` (for Japanese) 
    - `fcitx5-mozc` (for Japanese) 
    - `fcitx5-chewing` (for Chinese)
    - `fcitx5-chinese-addons` (for Chinese) 
    - `fcitx5-configtool` (GUI config tool)  
    - `fcitx5-lua`
- `p7zip`, `unrar`, `unzip`, `zip`: For the support of the formats. Installed with `unarchiver`.
- `intel-media-driver` or `libva-intel-driver`: For hwdec of mpv.
- `mpv-mpris`: Can let you control mpv via `playerctl`.
    - If you use **archlinux**, now (2022/08/12) install `mpv` and `mpv-mpris` of community version, which work smoothly for me.
- `yt-dlp`: For watching live-streaming on `mpv`.
- `intel_gpu_top`: To check if your intel gpu can do hardware acceleration properly.
- `libmad`, `faad2`, `libao`, `libmpcdec`: Optional Deps of `cmus`.
- `ntfs-3g`: NTFS-3G is an open source implementation of Microsoft NTFS that includes read and write support.

</details>

<a name="Patch_used_in_dwm"></a>
## Patch used in dwm ##
- [dwm-alwayscenter-20200625-f04cac6.diff](https://dwm.suckless.org/patches/alwayscenter/dwm-alwayscenter-20200625-f04cac6.diff)
- [dwm-autostart-20210120-cb3f58a.diff](https://dwm.suckless.org/patches/autostart/dwm-autostart-20210120-cb3f58a.diff)
- [dwm-pertag-6.2.diff](https://dwm.suckless.org/patches/pertag/dwm-pertag-6.2.diff)
  
<a name="Patch_used_in_st"></a> 
## Patch used in st ##  
- [st-anysize-0.8.4.diff](https://st.suckless.org/patches/anysize/st-anysize-0.8.4.diff)  
- [st-delkey-20201112-4ef0cbd.diff](https://st.suckless.org/patches/delkey/st-delkey-20201112-4ef0cbd.diff)  
- [st-w3m-0.8.3.diff](https://st.suckless.org/patches/w3m/st-w3m-0.8.3.diff)  
   
<a name="Patch_used_in_slock"></a>
## Patch used in slock ##
- [slock-capscolor-20170106-2d2a21a.diff](https://tools.suckless.org/slock/patches/capscolor/slock-capscolor-20170106-2d2a21a.diff)  
- [slock-message-20191002-b46028b.diff](https://tools.suckless.org/slock/patches/message/slock-message-20191002-b46028b.diff)  
    
<a name="Patch_used_in_dmenu"></a>
## Patch used in dmenu ##
- [dmenu-border-4.9.diff](https://tools.suckless.org/dmenu/patches/border/dmenu-border-4.9.diff)                   
- [dmenu-center-4.8.diff](https://tools.suckless.org/dmenu/patches/center/dmenu-center-4.8.diff) 
- [dmenu-linesbelowprompt-and-fullwidth-20211014.diff](https://tools.suckless.org/dmenu/patches/lines-below-prompt/dmenu-linesbelowprompt-and-fullwidth-20211014.diff)                   
    

<a name="My_scripts_using_dmenu"></a>
## My scripts using dmenu ##
> Here are some scripts which can be triggered by the keybindings in **dwm**. Also, they enhance some user experience which dwm can't provide.

<details>
<summary><b>Scripts list</b></summary>

- **calendar.sh**: This script has options for **this month**, **this year** and **next twelve months**, which would show in **st** after selecting the option showed in **dmenu**.

![](/screenshots/calendarsh.png)

![](/screenshots/calendar.png)

- **donotdisturb.sh**: This script has options for **Do not disturb** and **Normal**, which need dependencies: `dunst` and `libnotify`. 

![](/screenshots/donotdisturbsh.png)

![](/screenshots/donotdisturb.png)

- **player.sh**: This script can let you control media players which support [MPRIS](https://wiki.archlinux.org/title/MPRIS), like `cmus`, `mpv`, etc. Also, it can show what is playing in my `cmus` now. Need dependencies: `dunst`, `libnotify` and `playerctl`.

![](/screenshots/playersh.png)

![](/screenshots/player.png)

- **powermenu.sh**: This script can let you lock your laptop's screen, suspend, reboot or shutdown your computer in dmenu rather than type commands in terminal. Need dependencies: `dunst`, `libnotify` and `slock`. Also, due to the characteristic of `slock`, if you want to lock your screen and suspend simultaneously, you would need some special config which I would write down below. 

![](/screenshots/powersh.png)

![](/screenshots/power.png)
This is the lock screen. Using `slock`.

- **sysinfo.sh**: This script can let you check your systematic information of your computer, like **memory**, **battery remaining** and **temperature of cpu**. Need dependencies: `dunst`, `libnotify`, `acpi` and `lm_sensors`. 

![](/screenshots/sysinfosh.png)

![](/screenshots/sysinfo.png)

</details>

<a name="Special_Configs"></a>
## Special Configs ##
- suspend [Archwiki-slock-tips-and-tricks](https://wiki.archlinux.org/title/Slock#Tips_and_tricks)
-
-

<a name="My_Shell_Scripts"></a>
## My Shell Scripts ##
-
-
-

<a name="Thanks"></a>
## Thanks ##
- The format of the menu is inspired by [WillPower3309/awesome-dotfiles](https://github.com/WillPower3309/awesome-dotfiles).
- The folding style of content is inspired by [owl4ce/dotfiles](https://github.com/owl4ce/dotfiles).
- [Archwiki-slock](https://wiki.archlinux.org/title/Slock#Tips_and_tricks)
- [flaticon](https://www.flaticon.com/)
- []()
- []()







dotfiles for willdezenbookArch 
