set nocompatible
filetype off
" Syntax highlighting on
syntax on
" Show line numbers
set number 
" Set the path recursively
set path+=**
" Ignore case while searching
set ignorecase
" Auto load file changes
set autoread
" Show at least one line before and after the current line
set scrolloff=3
" Spell check
setlocal spell spelllang=en_us
" No spell to avoid conflicts with spelunker.vim 
set nospell 
" Display all matching files
set wildmenu
" Tabs to spaces
set expandtab
" Auto indent
set autoindent
" Tabs and spaces
set tabstop=4
" When indenting with '>' use 4 spaces 
set shiftwidth=4
" Auto save the file in some cases
set autowrite
" Set up theme
filetype plugin indent on   

set t_Co=256

" Redraw automatically on focus
au FocusGained * :redraw!

" Undo options
set undodir=~/.vim/undodir
set undofile
