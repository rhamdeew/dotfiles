## ZSH aliases

### Change directory

```cd ~/Downloads``` - cdd
```cd ~/Work``` - cdw

### Git commands

```git status``` - gs
```git add``` - ga

```git branch``` - gb
```git checkout``` - gc
```git merge``` - gme

```git diff``` - gd

```git log``` - gl
```git log -p``` - glp
```git log --name-only``` - gln

```git commit -v``` - gcv
```git commit -m``` - gcm
```git commit --amend``` - gca

```git stash``` - gt

```git pull origin``` - gplo
```git push origin``` - gpso


##  Software version management

Use NVM
```source $(brew --prefix nvm)/nvm.sh && nvm use --delete-prefix v10.16.3``` - envm

Use Pyenv
```eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"``` - pnv

Use Rbenv
```eval "$(rbenv init -)"``` - rbnv

## Ripgrep

```rg -l``` - rgl

## Docker

```docker ps``` - dps


## Vim/Neovim

**Hotkeys:**

Leader key - ```<Space>```

```:w``` - ```<Space> + w```

```:Commits``` - ```<Space> + fc```

```:GFiles``` - ```<Space> + o```
```:Files``` - ```<Space> + ff```

```:Commands``` - ```<Space> + p```

```:Buffers``` - ```<Space> + b```

```:StripWhitespace``` - ```<Space> + s```

```:.w !pbcopy``` - ```<Space> + y```


**Vim plugins:**
- fzf.vim
- vim-fugitive
- vim-airline
- vim-better-whitespace
- vim-commentary
- palenight.vim

**Additional Neovim plugins:**
- coc.nvim
- nerdtree


## Alacritty

Theme configuration. Use JetBrains Mono font.


## Tmux

**Hotkeys:**

```Ctrl+B "``` - split panels horizontally

```Ctrl+B %``` - split panels vertically

```Ctrl+B C``` - new window