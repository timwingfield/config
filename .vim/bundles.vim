" ****************************************************************************** 
" VUNDLE!
" ******************************************************************************  

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-vividchalk'
Bundle 'vim-scripts/summerfruit256.vim'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'vim-scripts/twilight'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-commentary'
Bundle 'airblade/vim-gitgutter'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'timwingfield/jasmine.vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'


" ****************************************************************************** 
" CTRLP
" ******************************************************************************   

" show hidden files
let g:ctrlp_show_hidden = 1

" visual config
let g:ctrlp_match_window = "bottom,order:ttp,min:1,max:20,results20"

nnoremap <silent> <leader>t :CtrlP<cr>
nnoremap <silent> <leader>b :CtrlPBuffer<cr>


" ******************************************************************************
" NERDTREEE
" ****************************************************************************** 

nnoremap <silent> <F2> :NERDTreeToggle<CR>

" ****************************************************************************** 
" VIM-COFFEE-SCRIPT
" ****************************************************************************** 

" compile CoffeeScript in a new buffer
vnoremap <silent> <localleader>c :CoffeeCompile<CR>

" ****************************************************************************** 
" VIM-GITGUTTER
" ****************************************************************************** 

" start with git gutter off
let g:gitgutter_enabled = 0

" toggle the git gutter
nnoremap <silent> <leader>g :GitGutterToggle<CR>

" toggle the git gutter highlights
nnoremap <silent> <leader>h :GitGutterLineHighlightsToggle<CR>
