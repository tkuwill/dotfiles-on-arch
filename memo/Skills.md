## Useful vim skills

1. buffers
    - In command mode, `bd` : Close the buffer you are in currently. Remove it from the buffers list.a
    - In command mode, `bn` : Go to the **next** buffer.
    - In command mode, `bp` : Go to the **previous** buffer.
2. Paste words from system's clipboard: Use `"+p` in **normal mode**. (In archlinux, you should install `gvim` package to have the clipboard feature.) Lowercase `p` pasting the word after the curosr. Uppercase `P` pasting the word before the cursor.
3. Copy words to system's clipboard: Use `"+y` in **visual mode**.
4. In **normal mode**, `0` or `^` means `home` . (But they are a little different.)
5. In **normal mode**, `$` means `end`. (`g_` is also `end` but it is a little different from `$`.)
6. tabs 
    - In command mode, use **tabedit file** to open the file in a new tab.
    - In normal mode, `gt` : Go to next tab.
    - In normal mode, `gT` : Go to previous tab.

## vifm skills

1. `za` : toggle dot files visibility.
 
## gitui skills

1. Due to the authentication [issue][] of [rust][], when you want to `push` in `gitui`, you have to do `eval `ssh-agent -s` ` and `ssh-add` at first, or you can't push by `gitui`.


[issue]: https://bbs.archlinux.org/viewtopic.php?id=270560
[rust]: https://sathia27.github.io/posts/2021/08/19/rust-cargo-resolve-authentication-issue.html
