## Useful vim skills

1. buffers
    - In command mode, `bd` : Close the buffer you are in currently. Remove it from the buffers list.
    - In command mode, `bn` : Go to the **next** buffer.
    - In command mode, `bp` : Go to the **previous** buffer.
2. Paste words from system's clipboard: Use `"+p` in **normal mode**. (In archlinux, you should install `gvim` package to have the clipboard feature.) Lowercase `p` pasting the word after the cursor. Uppercase `P` pasting the word before the cursor.
3. Copy words to system's clipboard: Use `"+y` in **visual mode**.
4. In **normal mode**, `0` or `^` means `home` . (But they are a little different.)
5. In **normal mode**, `$` means `end`. (`g_` is also `end` but it is a little different from `$`.)
6. tabs 
    - In command mode, use **tabedit file** to open the file in a new tab.
    - In normal mode, `gt` : Go to next tab.
    - In normal mode, `gT` : Go to previous tab.
7. Folding
    - `zo` : Open the current folding.
    - `zc` : Close the current folding.
    - `zm` : Close **all** foldings in the file.
    - `zr` : Open **all** foldings in the file.
8. INSERT mode's key
    - `s` : Delete the word under the cursor and enter the INSERT mode. It is equivalent to `cl`.
    - `S` : Delete **the whole line** under the cursor and enter the INSERT mode. It is equivalent to `cc`.
9. Spell check keys
When entering spell check, there are the keys to use:
    - `]s` : Move to the next misspelled word.
    - `[s` : Move to the previous misspelled word.
    - `z=` : Entering a list of options to that word.
    - `zg` : Mark the word as a **correct** word.
    - `zw` : Mark the word as a **wrong** word.
10. vim-sneak's keybindings
    - `s` : To search forwards.
    - `S` : To search backwards. 
    - `;` : To go the next match.
    - `,` : To go the previous match.
## zsh skills in emacs mode

1. Editing multi-line command, press `Esc+Enter` or `Alt+Enter` to insert the new line.
2. Press `<C-x><C-e>` to open the default editor to edit commands. It's useful when the command is too long. You have to add some [configs][] in order to use this feature.
3. `<C-p>` for the previous command.
4. `<C-n>` for the command after pressing `<C-p>`.
5. `<C-u>` for delete the line in terminal.
6. `<C-e>` for going to the end of the line.
7. `<C-a>` for going to the beginning of the line.

[configs]: https://github.com/tkuwill/willdezenbookArch_dotfiles/blob/master/.config/.zshrc#L111

## vifm skills

1. `za` : toggle dot files visibility.
 
## gitui skills
1. Due to the authentication [issue][] of [rust][], when you want to `push` in `gitui`, you have to do ```eval `ssh-agent -s` ``` and `ssh-add` at first, or you can't push by `gitui`.

[issue]: https://bbs.archlinux.org/viewtopic.php?id=270560
[rust]: https://sathia27.github.io/posts/2021/08/19/rust-cargo-resolve-authentication-issue.html

## The procedure of [installing AUR packages][] 
##### Credit from [Arch User Repository][]

1. Acquire build files 
```bash
git clone https://aur.archlinux.org/package_name.git
```
It is recommended because you can easily get updates to the package via `git pull`. You can also subscribe the [RSS][] of AUR recent updated packages to get the info of update.

2. Build the package
```bash
cd package_name
```
Then check `PKGBUILD` carefully. If the maintainer doesn't update the package, you can update that by yourself. In most cases, whatyou have to change are `pkgver=XXX` and `sha256sums` (or `sha512sums`) in `PKGBUILD`. You can go to the **information page of that package**, and click **View Changes** to get the info of how to updating that package.

Also, reading the comment of that package always lets you know the info of that package, too. For example, the url of getting `sha256sums` or the repo of that package.

After editting `PKGBUILD`, run `makepkg --printsrcinfo > .SRCINFO` to update `.SRCINFO`.

Then you can make the package. Run `makepkg` as a normal user.
```bash
makepkg -si -c
```
`-c`/`--clean` cleans up temporary build files after the build, as they are no longer needed. These files are usually needed only when debugging the build process. I highly recommend that you have to add `-c` flag because it will save a lot of space. In my case, `microsoft-edge-stable-bin` when built without `-c`, the directory took up almost **1GB**. When built with `-c` it only took up **321MB**.

`-i`/`--install` installs the package if it is built successfully. 

3. Upgrading packages

In the directory containing the package's `PKGBUILD`, you must first update the files and changes by using the command
```bash
git pull
```
then follow the previous build and install instructions.

[installing AUR packages]: https://wiki.archlinux.org/title/Arch_User_Repository#Acquire_build_files
[RSS]: https://aur.archlinux.org/rss/modified
[Arch User Repository]: https://wiki.archlinux.org/title/Arch_User_Repository
