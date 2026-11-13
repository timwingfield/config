" ******************************************************************************
" VUNDLE!
" ******************************************************************************

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'janko-m/vim-test'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dense-analysis/ale'

" **** color schemes ****
Plugin 'tpope/vim-vividchalk'
Plugin 'Lokaltog/vim-distinguished'

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
" ALE
"
" Lints with whatever the project has installed (eslint, rubocop, etc.)
" ******************************************************************************

let g:ale_sign_error = '⛔'
let g:ale_sign_warning = '🚧'

" open and close the loclist automatically
let g:ale_open_list = 1

" toggle linting
nnoremap <silent> <leader>s :ALEToggle<CR>

" ******************************************************************************
" ULTISNIP
" ******************************************************************************

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

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
