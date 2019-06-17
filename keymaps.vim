" KeyMap
let g:mapleader = "\<Space>"

" Home / End
" 遅いから削除検討
noremap <Leader>h ^
noremap <Leader>l $

" Move windows
nnoremap <Leader><Tab> <C-w>w
"nnoremap gh <C-w>h
"nnoremap gj <C-w>j
"nnoremap gk <C-w>k
"nnoremap gl <C-w>l

" Unhighlight search result
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" Buffer
nnoremap <Leader>bp :bprevious<CR>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bb :b#<CR>
nnoremap <Leader>bd :bdelete<CR>

" Go
augroup key_map
  autocmd!
  autocmd FileType go nmap <leader>b <Plug>(go-build)
  autocmd FileType go nmap <leader>r <Plug>(go-run)
  autocmd FileType go nmap <leader>t <Plug>(go-test)
  autocmd FileType go nmap <leader>tf <Plug>(go-test-func)
  autocmd FileType go nmap <leader>co <Plug>(go-coverage-toggle)
  autocmd FileType go nmap <leader>i <Plug>(go-info)
augroup END

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" vim-cheatsheet
nnoremap <Leader>ch :Cheat<CR>

" vim-gitgutter
nnoremap <Leader>gg :GitGutterToggle<CR>

" vim-fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>

