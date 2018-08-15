:let mapleader  = " "
" Drop competability
set nocompatible
" Syntax highlighting on
syntax on
" Show line numbers
set number 
" Set the path recursively
set path+=**
" Display all matching files
set wildmenu
" Tabs to spcaes
set expandtab
" Auto indent
set autoindent
" Tabs and spaces
set tabstop=4
" When indenting with '>' use 4 spaces 
set shiftwidth=4
" Set up the plugins
call plug#begin('~/.vim/plugged')
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()
" Theme
set background=dark
colorscheme PaperColor
" Nerdtree
map <C-n> :NERDTreeToggle<CR>
" GO run shortcut
map <C-F10> :! go run %<CR>
filetype plugin on
map <Tab> <C-x><C-o>

" Copy and past to and from system clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p
