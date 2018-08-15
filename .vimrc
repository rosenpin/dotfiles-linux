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
Plug 'vim-scripts/AutoComplPop'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
" Plug 'ervandew/supertab'
" Plug 'nsf/gocode'
Plug 'fatih/vim-go'
call plug#end()
" Show tree of files
map <C-n> :NERDTreeToggle<CR>
filetype plugin on
map <Tab> <C-x><C-o>
