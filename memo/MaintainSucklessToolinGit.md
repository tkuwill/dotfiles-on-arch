#### Credit from [How to maintain dwm configuration and customization in git][]
[How to maintain dwm configuration and customization in git]: https://dwm.suckless.org/customisation/patches_in_git/
##### Take dwm for example
1. Cloning the repository
```bash
git clone git://git.suckless.org/dwm
```
2. Create a special branch where all the customizations will be kept.
```bash
git branch will_dwm
```

3. Switch to the new branch.
```bash
git checkout will_dwm
```

4. Customizing your dwm. Then do `git commit` to record it.

#### Updating customizations after new release

1. Pull the new upstream changes into the master branch.
```bash
git checkout master
git pull
```

2. Then rebase your customization branch on top of the master branch.
```bash
git checkout will_dwm
git rebase --rebase-merges master
```
