map <Space> <Nop>
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
" Ignore case while searching
set ignorecase
" Auto load file changes
set autoread
" Show at least one line before and after the current line
set scrolloff=3
" Spell check
setlocal spell spelllang=en_us
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
Plugin 'bkad/CamelCaseMotion' " Camel case/snake case navigation
Plugin 'SirVer/ultisnips' " Code snippets 
Plugin 'NLKNguyen/papercolor-theme' " Theme
Plugin 'VundleVim/Vundle.vim' " Plugins
Plugin 'fatih/vim-go' " Golang support 
Plugin 'scrooloose/nerdtree' " File viewer and manager
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim' " Files fuzzy finder 
Plugin 'benmills/vimux' " Tmux integration
Plugin 'christoomey/vim-tmux-navigator' "Tmux integration
Plugin 'vim-airline/vim-airline' " Theme
Plugin 'vim-airline/vim-airline-themes' " Theme
Plugin 'scrooloose/syntastic' " Syntax errors checker
Plugin 'Shougo/deoplete.nvim' " Auto complete
Plugin 'zchee/deoplete-go', { 'do': 'make'} " Auto complete go plug in
Plugin 'w0rp/ale' " Lint 
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy code finder
Plugin 'sebdah/vim-delve' " Vim go debugger 
call vundle#end()            

" Set up theme
filetype plugin indent on   
set t_Co=256
set background=dark
colorscheme PaperColor

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Copy and paste to and from system clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p

" Map ctrl+C to esc
inoremap <C-c> <Esc>

" Redraw automatically on focus
au FocusGained * :redraw!

" Shortcuts
map <C-a> ^
map <C-e> $
map gs :%s///g<Left><Left><Left>

" Map capital W/Q
command! Wq wq
command! WQ wq
command! W w
command! -bar -bang Q quit<bang>


" Splitting
nnoremap ,s :vsplit<CR>
nnoremap ,v :split<CR>

" GO run shortcut
map <Tab> <C-x><C-o>

" Vim GO and related settings
set autowrite

au FileType go nmap <F10> :GoCoverageToggle -short<cr>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
au FileType go nmap gr <Plug>(go-referres) 
" Declaration fuzzy finder for Golang
au FileType go nmap gt :GoDeclsDir<cr> 
" Edit tests
au Filetype go nmap ga <Plug>(go-alternate-vertical)

" GO stuff
let g:go_fmt_command = "goimports"
let g:go_auto_sameids = 1

" GO highlighting 
let g:go_auto_type_info = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" Syntastic stuff
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 1 
let g:syntastic_go_checkers = ['go',  'golint', 'govet', 'errcheck']
let g:syntastic_auto_loc_list = 1

" Vim airline
let g:airline_theme='atomic'
            
" FZF
nnoremap <silent> <C-Space> :FZF<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" Ulti snip
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" deoplete
if has('nvim')
    let g:deoplete#enable_at_startup = 1
endif
 
call deoplete#custom#option({
    \ 'auto_complete': v:false,
\ })

" deoplete GO
let g:python3_host_prog  = '/usr/bin/python3.7'
let g:deoplete#sources#go#source_importer = 1
let g:deoplete#sources#go#package_dot = 1
let g:deoplete#sources#go#unimported_packages = 1
let g:deoplete#sources#go#builtin_objects = 1
let g:deoplete#sources#go#gocode_binary=$GOPATH.'/bin/gocode'
let g:deoplete#sources#go#pointer = 1

" Disable deoplete when in multi cursor mode
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction

" Ale lint
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

" Completion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <C-N> <C-x><C-o>

" CamelCaseMotion
map <silent> <S-w> <Plug>CamelCaseMotion_w
map <silent> <S-b> <Plug>CamelCaseMotion_b
map <silent> <S-e> <Plug>CamelCaseMotion_e

" HTML
autocmd FileType html
\ setlocal formatprg=tidy\ -indent\ -quiet\ --show-errors\ 0\ --tidy-mark\ no\ --show-body-only\ auto
