autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

autocmd FileType go nmap gi <Plug>(go-imports)
nmap tt :bel term<CR>

nmap <F8> :TagbarToggle<CR>
inoremap jk <ESC>

