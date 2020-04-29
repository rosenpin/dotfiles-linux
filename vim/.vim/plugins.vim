" Set up the plugins
call plug#begin('~/.vim/plugged')
Plug 'bkad/CamelCaseMotion' " Camel case/snake case navigation
Plug 'SirVer/ultisnips' " Code snippets 
Plug 'NLKNguyen/papercolor-theme' " Theme
Plug 'fatih/vim-go' " Golang support 
"Plug 'scrooloose/nerdtree' " File viewer and manager
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " Files fuzzy finder 
Plug 'benmills/vimux' " Tmux integration
Plug 'christoomey/vim-tmux-navigator' "Tmux integration
Plug 'vim-airline/vim-airline' " Theme
Plug 'vim-airline/vim-airline-themes' " Theme
Plug 'scrooloose/syntastic' " Syntax errors checker
Plug 'w0rp/ale' " Lint 
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy code finder
Plug 'sebdah/vim-delve' " Vim go debugger 
Plug 'kamykn/spelunker.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'pangloss/vim-javascript'
Plug 'TaDaa/vimade'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-vinegar'
Plug 'psliwka/vim-smoothie'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'rust-lang/rust.vim'
Plug 'majutsushi/tagbar'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Coc
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <C-n>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

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
"let g:go_auto_sameids = 1

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
" let g:ycm_filter_diagnostics = {
"   \ "javascript": {
"   \      "regex": [ "ts file" ],
"   \    }
"   \ }

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

" Tagbar
nmap <C-t> :TagbarToggle<CR>
let g:tagbar_autofocus=1

" Markdown
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='chromium'
