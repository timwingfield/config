" ******************************************************************************
" HELP SUCKS!
" ******************************************************************************

nnoremap <F1> <ESC>

" ******************************************************************************
" NORMAL MODE MAP
" ******************************************************************************

" redo with U
nnoremap U :redo<cr>

" switch windows
nnoremap gw 

" open project view
nnoremap <silent> <F2> :NERDTreeToggle<cr>

" insert blank lines without going into insert mode
nnoremap go o<esc>
nnoremap gO O<esc>

" ******************************************************************************
" INSERT MODE MAP
" ******************************************************************************

" get out of insert mode with jk
inoremap jk <Esc>

" ******************************************************************************
" VIM-TEST
" ******************************************************************************

function! SassTrue()
  if (&ft=='sass' || &ft=='scss')
    !jest test/sass.spec.js
  else
    :TestFile
  "   a:vimTestScope
  endif
endfunc

"let g:test#strategy = 'vimux'
"let g:test#strategy = 'dispatch'
nnoremap <leader>n :wa<cr> :TestNearest<CR>
nnoremap <leader>f :wa<cr> :call SassTrue()<CR>
nnoremap <leader>a :wa<cr> :TestSuite<CR>
nnoremap <leader>l :wa<cr> :TestLast<CR>

" ******************************************************************************
" QUICK SOURCE/EDIT OF .vimrc
" ******************************************************************************

nnoremap <silent> <leader>ev :e $MYVIMRC<cr>
nnoremap <silent> <leader>sv :so $MYVIMRC<cr>

" toggle relative numbers
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
