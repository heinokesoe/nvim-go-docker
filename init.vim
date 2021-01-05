set nocompatible
filetype off

call plug#begin()
Plug 'fatih/vim-go'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'morhetz/gruvbox'
call plug#end()
  
map <silent> <C-n> :NERDTreeFocus<CR>
let g:rainbow_active = 1
colorscheme gruvbox

filetype plugin indent on
syntax on

set colorcolumn=80
set background=dark
set number
set nowrap
set smartcase
set hlsearch
set noerrorbells
set expandtab
set smartindent
