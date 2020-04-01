map <Space> <Nop>
let mapleader=" "

" Copy and paste to and from system clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p

" Map ctrl+C to esc
inoremap <C-c> <Esc>

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

map <Tab> <C-x><C-o>

nnoremap <silent> <C-Space> :FZF<CR>

" Completion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <C-N> <C-x><C-o>

nmap <C-g> Zl
nmap <leader>g Zg

" Folding
nmap -- zc
nmap == zo
nmap __ zM
nmap ++ zR

nmap Z :w <CR>
