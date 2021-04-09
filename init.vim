set nocompatible
filetype off

call plug#begin()
Plug 'fatih/vim-go'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'morhetz/gruvbox'
call plug#end()
  
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:rainbow_active = 1
colorscheme gruvbox

filetype plugin indent on
syntax on

set background=dark
set number
set nowrap
set smartcase
set hlsearch
set noerrorbells
set expandtab
set smartindent
