setglobal nocompatible
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

call plug#begin('~/.vim/plugged')

" Common
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-commentary'
Plug 'joshdick/onedark.vim'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'

" Ruby
" Plug 'tpope/vim-haml', { 'for': 'haml' }
" Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
" Plug 'tpope/vim-rails', { 'for': 'ruby' }

call plug#end()

" Settings

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set number
highlight LineNr ctermfg=grey

set ignorecase
set smartcase

set nobackup
set nowritebackup
set nowb
set noswapfile
set bs=2
set hlsearch
set hidden

set background=dark
colorscheme onedark
let g:airline_theme = "onedark"

set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.coffee setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.coffee set syntax=javascript
set clipboard=unnamed

" Show whitespaces
set list listchars=tab:→\ ,eol:↲,nbsp:␣,trail:·,space:·,extends:⟩,precedes:⟨

" Bindings

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>o :GFiles .<CR>
nnoremap <leader>fc :Commits<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fa :Rg<CR>
nnoremap <leader>fp :let @+ = expand("%")<CR>
nnoremap <leader>p :Commands<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>s :StripWhitespace<CR>
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

function! NerdTreeToggleFind()
  if exists("g:NERDTree") && g:NERDTree.IsOpen()
    NERDTreeClose
  elseif filereadable(expand('%'))
    NERDTreeFind
  else
    NERDTree
  endif
endfunction

nnoremap <C-n> :call NerdTreeToggleFind()<CR>

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

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Snippets
ab ss screenshot_and_save_page
ab bb byebug
ab cl console.log
ab pdb import pdb; pdb.set_trace()
ab pudb import pudb; pudb.set_trace()
