## ZSH aliases

### Change directory


`cdd` – `cd ~/Downloads`

`cdw` – `cd ~/Work`

**Zoxide**

```
z <anything>
```

### Git commands


`gs` – `git status --short`  

`ga` – `git add`

---

`gb` – `git branch`  

`gc` – `git checkout`

`gme` – `git merge`

`gd` – `git diff`

`gcp` - `git cherry-pick`

---

`gl` – `git log`

`glp` – `git log -p`

`gln` – `git log --name-only`

---

`gcv` – `git commit -v`

`gcm` – `git commit -m`

`gca` – `git commit --amend`

---

`gplo` – `git pull origin`

`gpso` – `git push origin`

`gpsov` - `git push --no-verify origin`

`gpsof` - `git push --force origin`

`gpsofv` - `git push --force --no-verify origin`

`gpsovf` - `git push --force --no-verify origin`

---

`gda` - `git diff --color --name-only --diff-filter=A`

`gdm` - `git diff --color --name-only --diff-filter=M`

`gdd` - `git diff --color --name-only --diff-filter=D`


## Software version management

**Use RTX**

`rtx`


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
Nvim Tree Find File Toggle - <C-b>

Buf: Go to definition – gd
Buf: References – gr
Buf: Go to definition – K
Buf: Go to prev diag – [d
Buf: Go to next diag – ]d
Buf: LSP diag list – <Space>q
Buf: LSP rename – <Space>rn
Buf: LSP code action – <Space>ca
Buf: LSP symbols – <Space>so

Spectre Search - <Space>S
Spectre Search Current Word - <Space>SW
Spectre Search Current Word on Current File- <Space>SP
* - use <space>c to confirm replacement
```

**Plugins:**

  - wbthomason/packer.nvim
  - b3nj5m1n/kommentary
  - nvim-telescope/telescope.nvim
  -     nvim-lua/popup.nvim
  -     nvim-lua/plenary.nvim
  - sainnhe/everforest
  - kyazdani42/nvim-web-devicons
  - feline-nvim/feline.nvim
  - lukas-reineke/indent-blankline.nvim
  - lewis6991/gitsigns.nvim
  -     nvim-lua/plenary.nvim
  - nvim-treesitter/nvim-treesitter
  - nvim-treesitter/nvim-treesitter-textobjects
  - neovim/nvim-lspconfig
  - hrsh7th/nvim-cmp
  -     hrsh7th/cmp-nvim-lsp
  -     hrsh7th/cmp-buffer
  -     hrsh7th/cmp-path
  -     hrsh7th/cmp-cmdline
  - phaazon/hop.nvim
  - ntpeters/vim-better-whitespace
  - alvan/vim-closetag
  - rafamadriz/friendly-snippets
  - L3MON4D3/LuaSnip
  -     saadparwaiz1/cmp_luasnip
  - editorconfig/editorconfig-vim
  - kyazdani42/nvim-tree.lua
  - nathom/filetype.nvim
  - Pocco81/auto-save.nvim
  - AndrewRadev/splitjoin.vim
  - nvim-pack/nvim-spectre

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
  - tmux-plugins/vim-tmux-focus-events
  - editorconfig/editorconfig-vim


## Alacritty

Theme configuration. Use JetBrains Mono font.


## Tmux

**Hotkeys:**

```
Ctrl+b " – split panels horizontally
Ctrl+b % – split panels vertically
Ctrl+b C – new window
```
