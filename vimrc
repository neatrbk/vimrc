set number
syntax on
set ruler
set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

:let mapleader =" " 

" NERD TREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <Leader>f :NERDTreeToggle<Enter>

" JS(X) Syntax
let g:jsx_ext_required = 0
