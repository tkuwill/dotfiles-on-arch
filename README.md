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
- If you also have some questions like above, maybe it is good for you to have a look!

## Contents ##
1. [Details](#details)
2. [Features](#features)
3. [Packages](#Packages)
3. [Patch_used_in_dwm](#Patch_used_in_dwm)
4. [Patch_used_in_st](#Patch_used_in_st)
5. [Patch_used_in_slock](#Patch_used_in_slock)
6. [Patch_used_in_dmenu](#Patch_used_in_dmenu)
7. [Special_Configs](#Special_Configs)
8. [My_Shell_Scripts](#My_Shell_Scripts)
9. [Thanks](#Thanks)

<a name="details"></a>
## Details ##
- **OS**: [archlinux](https://archlinux.org/) KISS !
- **Shell**: [zsh](https://www.zsh.org/) COOL !
- **WM**: [dwm](https://dwm.suckless.org/) 100/100
- **Terminal**: [st](https://st.suckless.org/) st is **st.**!
- **Terminal multiplexer**:[tmux](https://github.com/tmux/tmux/wiki) Efficiency UP !
- **Screen locker**: [slock](https://tools.suckless.org/slock/) THE Simplest !
- **Application launcher**: [dmenu](https://tools.suckless.org/dmenu/) Suckless !
- **Notification**: [Dunst](https://github.com/dunst-project/dunst) Won't miss from best friend !
- **Video player**: [mpv](https://mpv.io/) Along with hwdec.
- **Music player**: [cmus](https://cmus.github.io/) Super Lightweight !
- **Email client**: [Thunderbird](https://www.mozilla.org/thunderbird/) My love !
- **Clipboard**: [CopyQ](https://github.com/hluk/CopyQ) My Favorite !
- **Screenshot tool**: [Flameshot](https://flameshot.org/) Awesome !
- **Archiving and compression**: [unarchiver](https://archlinux.org/packages/community/x86_64/unarchiver/) Easy to use.
- **Pdf viewer**: [MuPDF](https://mupdf.com/) Blazing fast !
- **Image viewer**: [eom](https://github.com/mate-desktop/eom) My eye, your eye.
- **File manager**: [Thunar](https://docs.xfce.org/xfce/thunar/start) Clean and intuitive !

<a name="features"></a>
## Features ##
- Trying my best to be as KISS as possible.
- All configs here are simply based on my favorite. 
- More Pragmatism, Less Lookism. 

<a name="Packages"></a>
## Packages ##
> Only list something I think I may forget to install if I get a fresh install of archlinux.
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
- `yt-dlp`: For watching live-streaming on `mpv`.
- `intel_gpu_top`: To check if your intel gpu can do hardware acceleration properly.
- `libmad`, `faad2`, `libao`, `libmpcdec`: Optional Deps of `cmus`.



<a name="Patch_used_in_dwm"></a>
## Patch used in dwm ##
-
-
-

<a name="Patch_used_in_st"></a>
## Patch used in st ##
-
-
-

<a name="Patch_used_in_slock"></a>
## Patch used in slock ##
-
-
-

<a name="Patch_used_in_dmenu"></a>
## Patch used in dmenu ##
-
-
-

<a name="Special_Configs"></a>
## Special Configs ##
-
-
-

<a name="My_Shell_Scripts"></a>
## My Shell Scripts ##
-
-
-

<a name="Thanks"></a>
## Thanks ##
-
-
-







dotfiles for willdezenbookArch 
