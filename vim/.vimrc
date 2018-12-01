let mapleader=" "
" Drop competability
set nocompatible
filetype off
" Syntax highlighting on
syntax on
" Show line numbers
set number 
" Set the path recursively
set path+=**
" Auto load file changes
set autoread
" Show at least one line before and after the current line
set scrolloff=3
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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()            
filetype plugin indent on   
set t_Co=256
set background=dark
colorscheme PaperColor
" Nerdtree
map <C-n> :NERDTreeToggle<CR>
" GO run shortcut
map <C-F10> :! go run %<CR>
map <Tab> <C-x><C-o>
" FZF
map <C-\> :FZF<CR>

" Copy and paste to and from system clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p

" Shortcuts
map <C-a> ^
map <C-e> &

" Splitting
nnoremap ,s :vsplit<CR>
nnoremap ,v :split<CR>

" Vim GO and related settings
set autowrite

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

let g:go_fmt_command = "goimports"
let g:go_auto_sameids = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 1 
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
