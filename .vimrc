setglobal nocompatible
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

call plug#begin('~/.vim/plugged')

" Common
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-commentary'
Plug 'drewtempelmeyer/palenight.vim'

" Ruby
" Plug 'tpope/vim-haml', { 'for': 'haml' }
" Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
" Plug 'tpope/vim-rails', { 'for': 'ruby' }

call plug#end()

" Settings

set number
highlight LineNr ctermfg=grey

set ignorecase
set smartcase

set nobackup
set nowritebackup
set nowb
set noswapfile
set bs=2

set background=dark
colorscheme palenight
let g:airline_theme = "palenight"

set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.coffee setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.coffee set syntax=javascript

" Show whitespaces
set list listchars=tab:→\ ,eol:↲,nbsp:␣,trail:·,space:·,extends:⟩,precedes:⟨

" Bindings

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>o :GFiles .<CR>
nnoremap <leader>fc :Commits<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>p :Commands<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>s :StripWhitespace<CR>
vmap <leader>y :.w !pbcopy<CR><CR>

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>
