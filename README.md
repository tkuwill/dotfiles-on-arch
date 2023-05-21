<div align="center">
	<img src="/screenshots/dwm.png">
	<img width="100pt" src="/screenshots/i3.png">
</div>
<div align="center">
	<h1>dwm & i3 dotfiles</h1>
</div>

![](/screenshots/mydwm2.png)
![](/screenshots/mydwm.png)
<div align="center">
	<h6>dwm</h6>
</div>

![](/screenshots/myi3.png)
> Use i3blocks.

![](/screenshots/myi32.png)
> Use polybar.

<div align="center">
	<h6>i3</h6>
</div>


![](/screenshots/mybsp.png)

<div align="center">
	<h6>bspwm</h6>
</div>

- Here is some [skills][] of using `zsh`, `vim` and installing **AUR** packages manually.
- bspwm's config is from [ghomasHudson/bspwm-dwm][]. And add some customized change like keybindings to open dmenu's scripts.
- If you want to learn bspwm, check this: [Bspwm Basics][].
- Wallpapers are from [李擎洲：九尾·妖狐][] and [彭雄渾][].
- These are my **dwm, i3 and bspwm** dotfiles used on my **ASUS Zenbook 14 UX425JA**. 
- Also, it is more like a *litte memo* for what I have installed rather than a install guideline.
- For the sake of longer battery runtime, I have **few configs** for decoration.
- All things here all have their duty to be here. (In my opinion.)
- I would also provide a viewpoint for those who don't know what to install after a fresh install of **archlinux**.
- I *might forget* to list something that has to be installed first before using my dotfiles, so if you want to use these, check first!
- I also put the icons which I use for notifications. Almost are from [flaticon][]. For details of those icons, check the scripts you want to use.   
- If you want to use these icons without rewrite the code of scripts, you have to put `sysicon` folder into `~/Pictures/sysicon`.
- I also put the configs of `cmus`, `dunst`, `gitui`, `mpv`, `tmux`, `vim`, `.xinitrc`, `.Xresources`, `zathura` and `zsh` in the `.config` folder. If you want to use those, feel free to use them.
- Almost all configs use [SauceCodePro Nerd Font][].
- If you want to know the steps to configure `st`, `dwm`, `dmenu` and `slock`, you can check this [tkuwill/My-dwm-dotfiles-My-st-config][]. Although it is mainly about `st`, but like changing some codes in `config.mk`, patching **suckless softwares** and some concept of recompiling **suckless softwares** are all the same.
- **If you want to use my dotfiles, you would have to change the directory written in mine to yours.**
- I used [MuPDF][] at first. It is very fast but it can't search for Chinese and Japanese. So I turn to [zathura][] now. **Zathura** doesn't have edit tool but it can search for language except English. Also, it is very fast, too. I installed `zathura` and `zathura-pdf-mupdf` packages.
- I also made notifications triggered by `dunst` when adjusting volume or monitor brightness. Here are the video examples on YouTube: [volume notification in dwm (by dunst)][] and [dwm brightness control (show by dunst)][]. 
- If you also have some questions like above, maybe it is good for you to have a look!

[skills]: https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/memo/Skills.md
[Bspwm Basics]: https://dharmx.is-a.dev/bspwm-basics/
[ghomasHudson/bspwm-dwm]: https://github.com/ghomasHudson/bspwm-dwm
[李擎洲：九尾·妖狐]: https://www.bilibili.com/video/BV1iN4y1F7pm/
[彭雄渾]: https://artouch.com/art-views/content-3244.html
[flaticon]: https://www.flaticon.com/
[SauceCodePro Nerd Font]: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro/Regular/complete
[tkuwill/My-dwm-dotfiles-My-st-config]: https://github.com/tkuwill/My-dwm-dotfiles-My-st-config
[MuPDF]: https://mupdf.com/
[zathura]: https://pwmt.org/projects/zathura/
[volume notification in dwm (by dunst)]: https://www.youtube.com/watch?v=WoZNyea_gRI
[dwm brightness control (show by dunst)]: https://www.youtube.com/watch?v=PT7mz31DxSk
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

- **OS**: [archlinux][] --KISS !
- **Shell**: [zsh][] --COOL !
- **WM**: [dwm][] and [i3][]--100/100
- **Terminal**: [st][] --st is **St.**!
- **Terminal multiplexer**: [tmux][] --Efficiency UP !
- **Screen locker**: [slock][] --THE Simplest !
- **Application launcher**: [dmenu][] --Suckless !
- **Notification**: [Dunst][] --Won't miss from best friend !
- **Video player**: [mpv][] --Along with hwdec.
- **Music player**: [cmus][] --Super Lightweight !
- **Email client**: [Thunderbird][] --My love !
- **Clipboard**: [CopyQ][] --My Favorite !
- **Tui for git**: [lazygit][] --Convenient !
- **Screenshot tool**: [Flameshot][] --Awesome !
- **Archiving and compression**: [unarchiver][] --Easy to use !
- **Pdf viewer**: [zathura][] --Blazing fast & Support Japanese search !
- **Image viewer**: [ristretto][] --Simple & Smells good !
- **File manager**: [Thunar][] --Clean and intuitive !
- **Cursor theme**: [xcursor-comix][] --CUTE !
- **System monitor**: [conky][] --Highly customizable !

[archlinux]: https://archlinux.org/
[zsh]: https://www.zsh.org/
[i3]: https://i3wm.org/
[dwm]: https://dwm.suckless.org/
[st]: https://st.suckless.org/
[tmux]: https://github.com/tmux/tmux/wiki
[slock]: https://tools.suckless.org/slock/
[dmenu]: https://tools.suckless.org/dmenu/
[Dunst]: https://github.com/dunst-project/dunst
[mpv]: https://mpv.io/
[cmus]: https://cmus.github.io/
[Thunderbird]: https://www.mozilla.org/thunderbird/
[CopyQ]: https://github.com/hluk/CopyQ
[lazygit]: https://github.com/jesseduffield/lazygit
[Flameshot]: https://flameshot.org/
[unarchiver]: https://archlinux.org/packages/community/x86_64/unarchiver/
[zathura]: https://pwmt.org/projects/zathura/
[ristretto]: https://docs.xfce.org/apps/ristretto/start
[Thunar]: https://docs.xfce.org/xfce/thunar/start
[xcursor-comix]: https://archlinux.org/packages/community/any/xcursor-comix/
[conky]: https://github.com/brndnmtthws/conky

</details>

<a name="features"></a>
## Features ##
- Trying my best to be as KISS as possible.
- All configs here are simply based on my favorite. 
- More Pragmatism, Less Lookism. 


<a name="Packages"></a>
## Packages ##
> Only list something I think I may forget to install when I get a fresh install of archlinux.

<details>
<summary><b>Packages list</b></summary>

- `pacman-contrib`: Contributed scripts and tools for pacman systems. (its command:`pacdiff`)
- `polkit-gnome`: A polkit authentication agent for GNOME package, especially for `gparted`.
- ~~`xfce4-power-manager`: I use this to control display brightness, which can let your brightness keys of your laptop work perfectly without complex config for binding keys for `xbacklight` or something similar. Also, it can let you manage suspend behavior on your laptop easily.~~
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
    - `fcitx5-rime` (for Chinese) 
    - `fcitx5-configtool` (GUI config tool)  
    - `fcitx5-lua`
- `p7zip`, `unrar`, `unzip`, `zip`: For the support of the formats. Installed with `unarchiver`.
- `intel-media-driver` or `libva-intel-driver`: For hwdec of mpv.
- `intel_gpu_top`: To check if your intel gpu can do hardware acceleration properly.
- `mpv-mpris`: Can let you control mpv via `playerctl`.
    - If you use **archlinux**, now (2022/08/12) install `mpv` and `mpv-mpris` of community version, which work smoothly for me.
- `yt-dlp`: For watching live-streaming on `mpv`.
- `streamlink`: For watching live-streaming with some special config.
- `libmad`, `faad2`, `libao`, `libmpcdec`: Optional Deps of `cmus`.
- `ntfs-3g`: NTFS-3G is an open source implementation of Microsoft NTFS that includes read and write support.
- `ttf-symbola`: (From AUR) A font for symbol blocks of the Unicode Standard (TTF). If you don't install this, `st` would fail when opening a document with some symbol blocks.
- `terminus-font`: For **bigger** fonts which can be used in `tty`.

</details>

<a name="Patch_used_in_dwm"></a>
## Patch used in dwm ##
- [dwm-alwayscenter-20200625-f04cac6.diff](https://dwm.suckless.org/patches/alwayscenter/dwm-alwayscenter-20200625-f04cac6.diff)
- [dwm-autostart-20210120-cb3f58a.diff](https://dwm.suckless.org/patches/autostart/dwm-autostart-20210120-cb3f58a.diff)
- [dwm-pertag-6.2.diff](https://dwm.suckless.org/patches/pertag/dwm-pertag-6.2.diff)
- [dwm-colorbar-6.3.diff](https://dwm.suckless.org/patches/colorbar/dwm-colorbar-6.3.diff)
- [dwm-scratchpad-6.2.diff](https://dwm.suckless.org/patches/scratchpad/dwm-scratchpad-6.2.diff)
- [dwm-systray-6.4.diff](https://dwm.suckless.org/patches/systray/dwm-systray-6.4.diff)
  
<a name="Patch_used_in_st"></a> 
## Patch used in st ##  
- [st-anysize-0.8.4.diff](https://st.suckless.org/patches/anysize/st-anysize-0.8.4.diff)  
- [st-delkey-20201112-4ef0cbd.diff](https://st.suckless.org/patches/delkey/st-delkey-20201112-4ef0cbd.diff)  
- [st-w3m-0.8.3.diff](https://st.suckless.org/patches/w3m/st-w3m-0.8.3.diff)  
- [st-gruvbox-light-0.8.5.diff](https://st.suckless.org/patches/gruvbox/st-gruvbox-light-0.8.5.diff)  
![](/screenshots/st.png)
   
<a name="Patch_used_in_slock"></a>
## Patch used in slock ##
- [slock-capscolor-20170106-2d2a21a.diff](https://tools.suckless.org/slock/patches/capscolor/slock-capscolor-20170106-2d2a21a.diff)  
- ~~[slock-message-20191002-b46028b.diff](https://tools.suckless.org/slock/patches/message/slock-message-20191002-b46028b.diff)~~  
    
- [slock-dwmlogo-20210324.diff](https://tools.suckless.org/slock/patches/dwmlogo/slock-dwmlogo-20210324.diff)  
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

- [calendar.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/.scripts/dmenu/calendar.sh): This script has options for **this month**, **this year** and **next twelve months**, which would show in **urxvt** after selecting the option showed in **dmenu**. Required dependencies: `rxvt-unicode`.

![](/screenshots/calendarsh.png)

![](/screenshots/calendar.png)

- [donotdisturb.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/.scripts/dmenu/donotdisturb.sh): This script has options for **Do not disturb** and **Normal**. Required dependencies: `dunst` and `libnotify`. 

![](/screenshots/donotdisturbsh.png)

![](/screenshots/donotdisturb.png)

- [player.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/.scripts/dmenu/player.sh): This script can let you control media players which support [MPRIS](https://wiki.archlinux.org/title/MPRIS), like `cmus`, `mpv`, etc. Also, it can show what is playing in my `cmus` now. Now it can play the url that you copied from YouTube or Twitch by `mpv`. Required dependencies: `dunst`, `libnotify`, `mpv`, `copyq` and `playerctl`.

![](/screenshots/playersh.png)

![](/screenshots/player.png)

- [powermenu.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/.scripts/dmenu/powermenu.sh): This script can let you lock your laptop's screen, suspend, reboot or shutdown your computer in dmenu rather than type commands in terminal. Required dependencies: `dunst`, `libnotify` and `slock`. Also, due to the characteristic of `slock`, if you want to lock your screen and suspend simultaneously, you would need some special config which I would write down below. 

![](/screenshots/powersh.png)

![](/screenshots/power.png)

> This is slock patched with[slock-message-20191002-b46028b.diff](https://tools.suckless.org/slock/patches/message/slock-message-20191002-b46028b.diff).

![](/screenshots/power2.png)

> This is slock patched with[slock-dwmlogo-20210324.diff](https://tools.suckless.org/slock/patches/dwmlogo/slock-dwmlogo-20210324.diff). With `logosize = 75`.  

![](/screenshots/power3.png)

> This is slock patched with[slock-dwmlogo-20210324.diff](https://tools.suckless.org/slock/patches/dwmlogo/slock-dwmlogo-20210324.diff). With `logosize = 125`.  

- [sysinfo.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/.scripts/dmenu/sysinfo.sh): This script can let you check your systematic information of your computer, like **memory**, **battery remaining** and **temperature of cpu**. Required dependencies: `dunst`, `libnotify`, `acpi` , `networkmanager` and `lm_sensors`. 

![](/screenshots/sysinfosh.png)

![](/screenshots/sysinfo.png)

- [browser.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/.scripts/dmenu/browser.sh): This script can let you open browsers in certain zoom scale by adding `--force-device-scale-factor=n` in the option. `n` can be the zoom scale you want. Config `n` you want in the script at first, then you can open browser in that zoom scale. Can be used with `Edge` and `Chromium`.

![](/screenshots/browserscript.png)

![](/screenshots/browsersh.png)

- [caffeine.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/.scripts/dmenu/caffeine.sh): This script can let you prevent screen from going sleep automatically, like [Caffeine](https://launchpad.net/caffeine) on linux distros or [Amphetamine](https://apps.apple.com/tw/app/amphetamine/id937984704?mt=12) on macOS. Required dependencies: `dunst`, `libnotify` and `xorg-xset`.

![](/screenshots/caffeinescript.png)

![](/screenshots/caffeinesh1.png)

![](/screenshots/caffeinesh2.png)

</details>

<a name="Special_Configs"></a>
## Special Configs ##
> Some configs need to be set if you want to use dotfiles like mine.

<details>
<summary><b>Required configs</b></summary>

- **slock lock on suspend** : You should create the following service which turns off the monitor and locks the screen. Credit from [Archwiki-slock-tips-and-tricks](https://wiki.archlinux.org/title/Slock#Tips_and_tricks).

If your username is `user`, run: 
```sh
EDITOR=vim sudoedit /etc/systemd/system/slock@user.service
```
```sh
[Unit]
Description=Lock X session using slock for user %i
Before=sleep.target

[Service]
User=%i
Environment=DISPLAY=:0
ExecStartPre=/usr/bin/xset dpms force suspend
ExecStart=/usr/bin/slock

[Install]
WantedBy=sleep.target
```
BUT, this is for those who install `slock` from **AUR**. If you compiled `slock` by yourself, you have to create the following service.
```sh
EDITOR=vim sudoedit /etc/systemd/system/slock@user.service
```
```sh
[Unit]
Description=Lock X session using slock for user %i
Before=sleep.target

[Service]
User=%i
Environment=DISPLAY=:0
ExecStartPre=/usr/bin/xset dpms force suspend
ExecStart=/usr/local/bin/slock

[Install]
WantedBy=sleep.target
```
No matter which situation you face, you should all enable the `slock@user.service` systemd unit for it to take effect for the username `user`.
```sh
systemctl enable slock@user.service
```

</details>


<details>
<summary><b>Other special configs</b></summary>

- cursor : See [Cursor themes][]. I set mine by `.Xresources` and `~/.config/gtk-3.0/settings.ini`. For 1920x1080 resolution add the config below.

```sh
.Xresources 

! cursor setting
Xcursor.theme: ComixCursors-Orange
Xcursor.size: 48

Also, add codes below in `~/.xinitrc`.

xrdb -merge ~/.Xresources

---

~/.config/gtk-3.0/settings.ini 

[Settings]
gtk-icon-theme-name = Adwaita
gtk-theme-name = Adwaita
gtk-font-name = Noto Sans CJK TC Medium 12
gtk-cursor-theme-name = ComixCursors-Orange


```

- Browser's scale : See [Chromium][].
- Input method : In order to be able to [input Chinese][] in all programs, add the codes below: 

`EDITOR=vim sudoedit /etc/environment`

```sh 

GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
SDL_IM_MODULE=fcitx

```
- Power button action : See [Power management][]. Edit `/etc/systemd/logind.conf`. Uncommented that you want to config in order to make it work.

```sh 
...
#InhibitDelayMaxSec=5
#UserStopDelaySec=10
HandlePowerKey=ignore
HandlePowerKeyLongPress=poweroff
#HandleRebootKey=reboot
...
#RebootKeyIgnoreInhibited=no
HoldoffTimeoutSec=10s
#IdleAction=ignore
...
```
- Grub menu's font setting: See [GRUB background image and bitmap fonts][]. If you would like to use a font you like in `GRUB menu`, you can follow the steps below to make it be a `bitmap font` because the font used in `GRUB menu` must be a `bitmap font`. 

```bash
### sudo grub-mkfont /path/to/the/font/you/want/to/use --size=30 --output=/boot/grub/fonts/fontName.ps2
sudo grub-mkfont /usr/share/fonts/noto-cjk/NotoSerifCJK-Bold.ttc --size=30 --output=/boot/grub/fonts/Notocjk30.ps2
```
If the command `grub-mkfont` doesn't produce any output, you make it. Then edit `/etc/default/grub`.

```bash
sudoedit /etc/default/grub

...
#GRUB_BACKGROUND="/path/to/wallpaper"
#GRUB_THEME="/path/to/gfxtheme"
GRUB_FONT="/boot/grub/fonts/Notocjk30.ps2"
...
```

After editing `/etc/default/grub`, you must **re-generate** `GRUB menu` to apply the change.

```bash
sudo grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

- TTY Font's config: See [tty font][]. Also, the commands `showconsolefont` and `setfont FONTNAME` **MUST be done** in **tty**. You have to install [terminus-font][] at first if you want to use **bigger** fonts in `tty`. 

```bash
sudoedit /etc/vconsole.conf 

FONT=ter-132b
```
Then run the command below:

```bash
sudo mkinitcpio -P
```
Sometimes, you will have to load the graphics driver earlier, see [persistent configuration][] and [Early KMS start][] for more detailed description.

```bash
sudoedit /etc/mkinitcpio.conf
...
MODULES=(i915)
...

```



[Chromium]: https://wiki.archlinux.org/title/chromium#Tab_font_size_is_too_large
[Cursor themes]: https://wiki.archlinux.org/title/Cursor_themes
[input Chinese]: https://archlinuxstudio.github.io/ArchLinuxTutorial/#/rookie/DE&App?id=_11安装输入法
[Power management]: https://wiki.archlinux.org/title/Power_management#ACPI_events
[GRUB background image and bitmap fonts]: https://wiki.archlinux.org/title/GRUB/Tips_and_tricks#Background_image_and_bitmap_fonts
[tty font]: https://wiki.archlinux.org/title/Linux_console#Fonts
[terminus-font]: https://archlinux.org/packages/community/any/terminus-font/
[persistent configuration]: https://wiki.archlinux.org/title/Linux_console#Persistent_configuration
[Early KMS start]: https://wiki.archlinux.org/title/Kernel_mode_setting#Early_KMS_start

</details>

<a name="My_Shell_Scripts"></a>
## My Shell Scripts ##
> Here are some shell scripts written by me. They make my experience on **archlinux** more fantastic and prevent me from some bloated softwares.

<details>
<summary><b>Scripts list</b></summary>

- [batterycycle.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/shellscripts/batterycycle.sh): It can record the battery cycle into batterycycle.log, then show the batterycycle.log with `bat`. Required dependencies: `upower` and `bat`.
- [reminder.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/shellscripts/reminder.sh): This script can read the mins and messages you input, then remind you with the messages you have input after the mins you have input, too. It uses `mpv` to play music as an alarm and shows messages by notification. Required dependencies: `libnotify`, `dunst` and `mpv`.
- [timer.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/shellscripts/timer.sh): This script is very similar to **reminder.sh**. What really makes them different is that **timer.sh** is only a *timer*. Required dependencies: `libnotify`, `dunst` and `mpv`.
- [loveplaylist.sh](https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/shellscripts/loveplaylist.sh): This script uses `mpv` to play music from a playlist which is just simply a `XX.m3u` or a `XX.txt`. The playlist `XX.m3u` or `XX.txt` is just a document which is full of urls copied from YouTube. Required dependencies: `mpv` and `yt-dlp`.
- [cmusvol.sh][]: This is a script for adjusting **volume** or **play mode** in `cmus` triggered by keybinding in my `dwm` config. Now I re-write it and make it a **TUI menu**. Required dependencies: `dialog`, `cmus`, `playerctl` and `dunst`.

![](/screenshots/cmusvol.png)

![](/screenshots/cmusvol2.png)

- [notificationcenter.sh][]: This is a script for showing all notifications shown before. **Because I use `dunst` not only as notification daemon but also as the indicator of volume and screen backlight, it is recommended that you set up the rules of `dunst` at first. Like the indicator of volume and so on. Set the rules to [ignore][] them.**
- [liveStream.sh][]: This script can let you watch live-stream just by pasting the url and the quality of live in terminal rather than input a long command.

[cmusvol.sh]: https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/shellscripts/cmusvol.sh
[notificationcenter.sh]: https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/shellscripts/notificationcenter.sh
[ignore]: https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/.config/dunst/dunstrc#L436
[liveStream.sh]: https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/shellscripts/liveStream.sh

</details>

<a name="Thanks"></a>
## Thanks ## - The format of the menu is inspired by [WillPower3309/awesome-dotfiles](https://github.com/WillPower3309/awesome-dotfiles).
- The folding style of content is inspired by [owl4ce/dotfiles](https://github.com/owl4ce/dotfiles).
- The **BACK TO TOP** button is also inspired by [owl4ce/dotfiles](https://github.com/owl4ce/dotfiles).
- [Archwiki-slock](https://wiki.archlinux.org/title/Slock#Tips_and_tricks)
- [flaticon](https://www.flaticon.com/)
- [Arch Linux 安装使用教程 - ArchTutorial - Arch Linux Studio](https://archlinuxstudio.github.io/ArchLinuxTutorial/#/)
- The people who wrote some fantastic **information** or **codes** which I took a reference to.  

---

###### dotfiles for willdezenbookArch 

<pre align="center">
<a href="#readme">BACK TO TOP</a>
</pre>
