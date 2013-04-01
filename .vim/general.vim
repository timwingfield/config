" ******************************************************************************  
" ADDITIONAL SYNTAX HIGHLIGHTING
" ****************************************************************************** 

augroup syntax 
  autocmd!
  autocmd BufNewFile,BufRead *.json setfiletype javascript
  autocmd BufNewFile,BufRead {Gemfile,Guardfile,*.rabl} setfiletype ruby
augroup end

" ****************************************************************************** 
" BASICS
"
" Oh, behave...
" ****************************************************************************** 

" the color sheme, dumbass
colorscheme vividchalk

" update the file if it's been changed externally
set autoread

" allow backspacing in insert mode
set backspace=indent,eol,start

" allow clipboard access
set clipboard=unnamed

" highlight current line
"set cul

" highlight current column
"set cursorcolumn

"set cursor highlights
set ruler

" allow hidden buffers instead of closing
set hidden

" always show line number
set number 
setlocal numberwidth=3

" scroll buffer
set scrolloff=10

"Remove splash screen
set shortmess+=I

" shows selected lines
set showcmd

" match braces and other auto complete magic
set showmatch
set completeopt=menu,preview
set wildmenu
set wildmode=list:longest,full

" vim is terrible without this - no beeps
set visualbell 

" enable color syntax highlighting
syntax on

" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

" don't make it look like there are line breaks where there aren't:
set nowrap

" ****************************************************************************** 
" BACKUP FILES
"
" Don't let VIM do this...
" ******************************************************************************

" no swapfiles
set noswapfile

" no backup files
set nobackup

" no backup files for editing
set nowritebackup

" ****************************************************************************** 
" COMPLETION
" ******************************************************************************  


" ignore from completion
set wildignore=*.o,*.obj,*~

" ******************************************************************************
" CURSOR
"
" OSX iTerm2 Specific
" ******************************************************************************

" change the cursor shape in edit mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" ******************************************************************************   
" SEARCH
" ****************************************************************************** 

" show matches as you type the search pattern
set incsearch

" ignore case when searching
set ignorecase

" search is case-insensitive if lowercase, case-sensitive otherwise
set smartcase

" ****************************************************************************** 
" STATUS LINE
" ****************************************************************************** 

" show the status line
set laststatus=2

" the deets...
set statusline=\ File:\ %t\ %y\ %r 
set statusline+=%=Buffer:\ %n\ --\ Location:\ %l/%L:%c\ 

" ****************************************************************************** 
" TABS AND SPACES
" ******************************************************************************

" use indents of 2 spaces, and have them copied down lines:
  set expandtab
  set tabstop=2
  set softtabstop=2 
  set shiftwidth=2

  set autoindent

" ****************************************************************************** 
" MARKDOWN
" ******************************************************************************

augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
  autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:>
  autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:>
augroup END

augroup markdown
  au! BufRead,BufNewFile *.mkd   setfiletype mkd
  au! BufRead,BufNewFile *.md   setfiletype mkd
  au! BufRead,BufNewFile *.markdown   setfiletype mkd
augroup END

" turn spell check on for markdown files
  au BufNewFile,BufRead *.md,*.markdown setlocal spell spelllang=en_us
  au BufNewFile,BufRead *.md,*.markdown setlocal wrap
  au BufNewFile,BufRead *.md,*.markdown setlocal linebreak
  au BufNewFile,BufRead *.md,*.markdown setlocal wm=2

" *** Maybe turn these on? ***
" remember last position in file
  "au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" turn on javascript colors for a json file
  "autocmd BufNewFile,BufRead *.json set ft=javascript

" have NERDTree show hidden files by default
  "let NERDTreeShowHidden=1
  
" Set temporary directory (don't litter local dir with swp/tmp files)
  "set directory=/tmp/

" have one hundred lines of command-line (etc) history:
  "set history=100
