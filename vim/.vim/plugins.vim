" Set up the plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'bkad/CamelCaseMotion' " Camel case/snake case navigation
Plugin 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " Python syntax highlighting
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
Plugin 'w0rp/ale' " Lint 
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy code finder
Plugin 'sebdah/vim-delve' " Vim go debugger 
Plugin 'Valloric/YouCompleteMe'
Plugin 'kamykn/spelunker.vim'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'sbdchd/neoformat'
Plugin 'flowtype/vim-flow'
Plugin 'pangloss/vim-javascript'
call vundle#end()            

" Nerdtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle %<CR>

"""""""""""""""""
"     GOLANG    "
"""""""""""""""""

" Go Mapping
au FileType go nmap <F10> :GoCoverageToggle -short<cr>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
au FileType go nmap gr <Plug>(go-rename) 
au FileType go nmap gd <Plug><go-def)
au FileType go nmap gD <Plug>(go-referrers)
" Declaration fuzzy finder for Golang
au FileType go nmap gt :GoDeclsDir<cr> 
" Edit tests
au Filetype go nmap ga <Plug>(go-alternate-vertical)

" GO options
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

"""""""""""""
" Syntastic "
"""""""""""""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 1 
let g:syntastic_go_checkers = ['go',  'golint', 'govet', 'errcheck']
let g:syntastic_auto_loc_list = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

""""""""""
" Themes "
""""""""""
set background=dark
colorscheme PaperColor
let g:airline_theme='atomic'

"""""""""""
"   Lint  "
"""""""""""
" Ale lint
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" Enable ale integration with airline.
let g:airline#extensions#ale#enabled = 1

"""""""""""""""""
" Auto Complete "
"""""""""""""""""
" Ulti snip
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" spelunker.vim
let g:enable_splunkver_vim = 1

" Disable YCM for ts files to fix conflicts with flow
let g:ycm_filter_diagnostics = {
  \ "javascript": {
  \      "regex": [ "ts file" ],
  \    }
  \ }

"""""""""""
"   ETC   "
"""""""""""
" Vimux
map <silent> vvr :VimuxPromptCommand<cr>
map <silent> vvl :VimuxRunLastCommand<cr>

" CamelCaseMotion
map <silent> <S-w> <Plug>CamelCaseMotion_w
map <silent> <S-b> <Plug>CamelCaseMotion_b
map <silent> <S-e> <Plug>CamelCaseMotion_e

