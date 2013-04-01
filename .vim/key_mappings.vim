" get out of insert mode with jk
  inoremap jk <Esc>

" redo with U
  nnoremap U :redo<cr>

" switch windows
  nnoremap gw 

" open project view
  nnoremap <silent> <F2> :NERDTreeToggle<cr>

" insert blank lines without going into insert mode
  nnoremap go o<esc>
  nnoremap gO O<esc>

" Fuzzy Finder - cmd-enter to open selected file in new tab
  let g:fuf_keyOpenTabpage = '<D-CR>'
  nnoremap <Leader>t :FufFile<cr> 
  nnoremap <Leader>b :FufBuffer<cr> 
  nnoremap <Leader>f :FufRenewCache<cr> 
