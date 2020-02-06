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
