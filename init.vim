setglobal nocompatible
set hidden

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

call plug#begin('~/.config/nvim/plugged')

" Common
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'mcchrish/nnn.vim'

" Ruby
Plug 'tpope/vim-haml', { 'for': 'haml' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }

" React
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

" Settings

set termguicolors
set number
highlight LineNr ctermfg=grey

set ignorecase
set smartcase

set nobackup
set nowritebackup
set nowb
set noswapfile
set hidden


" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

set background=dark
colorscheme onedark
let g:airline_theme = "onedark"

set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.coffee setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.coffee set syntax=javascript
set clipboard=unnamed

" Show whitespaces
set list listchars=tab:→\ ,eol:↲,nbsp:␣,trail:·,space:·,extends:⟩,precedes:⟨

" Bindings

let mapleader = "\<Space>"
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>o :GFiles .<CR>
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

" Neovim specific config part begin

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gv :vsp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Find symbol of current document
nnoremap <silent> <leader>fo :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>fs  :<C-u>CocList -I symbols<cr>

" Neovim specific config part end

let g:nnn#set_default_mappings = 0
nnoremap <leader>n :NnnPicker %:p:h<CR>

let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-x>': 'split',
      \ '<c-v>': 'vsplit' }

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
