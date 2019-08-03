" Neoformat on save
autocmd BufWritePre *.js Neoformat

"Javascript
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
"
" HTML
autocmd FileType html
\ setlocal formatprg=tidy\ -indent\ -quiet\ --show-errors\ 0\ --tidy-mark\ no\ --show-body-only\ auto

" Remember last position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

