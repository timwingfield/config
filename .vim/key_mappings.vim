" get out of insert mode with cmd-i
  imap <D-i> <Esc>

" get out of insert mode with ;;
  imap ;; <Esc> 

" redo with U
  nmap U :redo<cr>

" switch windows
  nmap gw 

" open project view
  nmap <silent> <F2> :NERDTreeToggle<cr>

" ack for project-wide searching
  nmap g/ :LAck 
  nmap g* :LAck -w <C-R><C-W><cr>
  nmap ga :LAckAdd 
  nmap gn :lnext<cr>
  nmap gp :lprev<cr>

" insert blank lines without going into insert mode
  nmap go o<esc>
  nmap gO O<esc>

" open the source in a browser for distribution or copying as RTF
  nmap gH :OpenHtml<cr>

" Fuzzy Finder - cmd-enter to open selected file in new tab
  let g:fuf_keyOpenTabpage = '<D-CR>'
  nmap <Leader>t :FufFile<cr> 
  nmap <Leader>b :FufBuffer<cr> 
  nmap <Leader>f :FufRenewCache<cr> 

" shortcut for =>
  imap <C-h> <Space>=><Space>
