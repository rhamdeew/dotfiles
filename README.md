## ZSH aliases

### Change directory

```
cd ~/Downloads – cdd
cd ~/Work – cdw
```

**Zoxide**

```
z <anything>
```

### Git commands

```
git status --short – gs
git add – ga
```

```
git branch – gb
git checkout – gc
git merge – gme
git diff – gd
```

```
git log – gl
git log -p – glp
git log --name-only – gln
```

```
git commit -v – gcv
git commit -m – gcm
git commit --amend – gca
```

```
git pull origin – gplo
git push origin – gpso
```

## Software version management

**Use NVM**

```
nvm
```

**Use Pyenv**

```
eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)" – pyenvi
```

**Use Rbenv**

```
eval "$(rbenv init -)" – rbenvi
```


## Ripgrep

```
rg -l – rgl
```


## Docker

```
docker ps – dps
```


## Neovim

**Install**

```
:PackerInstall
```

**Hotkeys:**

Leader key - ```<Space>```

```
:w – <Space> + w
:noh – <Space> + /
:StripWhitespace – <Space> + s
Copy file local path – <Space> + fp
Telescope: Buffers – <Space> + b
Telescope: Find files – <Space> + o
Telescope: Current Buffer Fuzzy find – <Space> + sb
Telescope: Live grep – <Space> + sp
Telescope: File Browser – <Space> + f
Telescope: Git Status – <Space> + i
Telescope: Git Status – <Space> + i
Hop: Hint Words – <Space><Space> + w
Hop: Hint Lines – <Space><Space> + l

Buf: Go to definition – gd
Buf: References – gr
Buf: Go to definition – K
Buf: Go to prev diag – [d
Buf: Go to next diag – ]d
Buf: LSP diag list – <Space>q
Buf: LSP rename – <Space>rn
Buf: LSP code action – <Space>ca
Buf: LSP symbols – <Space>so

LSP Saga: lsp_finder – <Space>cf
LSP Saga: hover doc – <Space>ch
LSP Saga: preview definition – <Space>cd
```

**Plugins:**

  - wbthomason/packer.nvim
  - b3nj5m1n/kommentary
  - nvim-telescope/telescope.nvim
  -     nvim-lua/popup.nvim
  -     nvim-lua/plenary.nvim
  - sainnhe/everforest
  - kyazdani42/nvim-web-devicons
  - hoob3rt/lualine.nvim
  - lukas-reineke/indent-blankline.nvim
  - lewis6991/gitsigns.nvim
  -     nvim-lua/plenary.nvim
  - nvim-treesitter/nvim-treesitter
  - nvim-treesitter/nvim-treesitter-textobjects
  - neovim/nvim-lspconfig
  - hrsh7th/nvim-compe
  - glepnir/lspsaga.nvim
  - phaazon/hop.nvim
  - ntpeters/vim-better-whitespace
  - alvan/vim-closetag
  - blackCauldron7/surround.nvim
  - rafamadriz/friendly-snippets
  - L3MON4D3/LuaSnip

## Vim

**Install**

```
:PlugInstall
```

**Hotkeys:**

```
:w – <Space> + w
:noh – <Space> + /
:StripWhitespace – <Space> + s
Copy file local path – <Space> + fp
:Buffers – <Space> + b
:GFiles – <Space> + o
:Commits – <Space> + fc
:Files – <Space> + ff
:Tags – <Space> + ft
:Rg – <Space> + fa
:Commands – <Space> + p
:tabnew – <Space> + t
Easymotion – <Space><Space> + w
Easymotion – <Space><Space> + b
NNN – <Space>n
```

**Plugins:**

  - junegunn/fzf
  - junegunn/fzf.vim
  - tpope/vim-fugitive
  - vim-airline/vim-airline
  - ntpeters/vim-better-whitespace
  - tpope/vim-commentary
  - joshdick/onedark.vim
  - airblade/vim-gitgutter
  - easymotion/vim-easymotion
  - mcchrish/nnn.vim
  - tmux-plugins/vim-tmux-focus-events


## Alacritty

Theme configuration. Use JetBrains Mono font.


## Tmux

**Hotkeys:**

```
Ctrl+b " – split panels horizontally
Ctrl+b % – split panels vertically
Ctrl+b C – new window
```
