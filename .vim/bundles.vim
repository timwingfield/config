" ****************************************************************************** 
" VUNDLE!
" ******************************************************************************  

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'kchmck/vim-coffee-script'
Bundle 'airblade/vim-gitgutter'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'timwingfield/jasmine.vim'

" **** color schemes ****
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'vim-scripts/summerfruit256.vim'
Bundle 'vim-scripts/twilight'


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
" SYNTASTIC
"
" ******************************************************************************

" set to check files when opened
let g:syntastic_check_on_open = 1

" set syntastic error symbol
let g:syntastic_error_symbol = '⛔'

" set syntastic warning symbol
let g:syntastic_warning_symbol = '🚧'

" set syntastic to always populate the loclist
let g:syntastic_always_populate_loc_list = 1

" open and close the loclist automatically
let g:syntastic_auto_loc_list = 1

" set active/passive filetypes
let g:syntastic_mode_map= {
\ 'mode': 'active',
\ 'active_filetypes'  : [],
\ 'passive_filetypes' : ['html']
\ }

" toggle the mode
nnoremap <silent> <leader>s :SyntasticToggleMode<CR>

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
