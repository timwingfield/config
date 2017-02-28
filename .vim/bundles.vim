" ******************************************************************************
" VUNDLE!
" ******************************************************************************

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ervandew/supertab'
Plugin 'gmarik/vundle'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'janko-m/vim-test'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'suan/vim-instant-markdown'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'

" **** color schemes ****
Plugin 'tpope/vim-vividchalk'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'vim-scripts/summerfruit256.vim'
Plugin 'vim-scripts/twilight'
call vundle#end()

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

" Set up syntastic to use ESLint
" Will require global install of eslint, babel-eslint, and
"   estlint-plugin-react
" Will require an .eslintrc file in project
"   or a global .eslintrc file in ~

let g:syntastic_javascript_checkers = ['eslint']

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
" ULTISNIP
" ******************************************************************************

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

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

" ******************************************************************************
" VIM-AIRLINE
" ******************************************************************************

" add fancy schmancy fonts
let g:airline_powerline_fonts=1

" set the airline theme
let g:airline_theme='simple'


" show buffers
let g:airline#extensions#tabline#enabled = 1

" show only filename in tab bar
let g:airline#extensions#tabline#fnamemod = ':t'
