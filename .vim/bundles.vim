" ****************************************************************************** 
" VUNDLE!
" ******************************************************************************  

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-vividchalk'
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

" ****************************************************************************** 
" COMMAND-T
" ******************************************************************************   

let g:CommandTCancelMap = ['<ESC>', '<C-c>']
let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']

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