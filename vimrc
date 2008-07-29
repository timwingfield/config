  scriptencoding utf-8

" MAKE ARROW KEYS WORK IN CONSOLE VI
  set term=xterm
  
" Set temporary directory (don't litter local dir with swp/tmp files)
  set directory=/tmp/

" Color themes
  colors twilight2

" These two enable syntax highlighting
  set nocompatible
  syntax on
  
" have one hundred lines of command-line (etc) history:
  set history=100

" Show us the command we're typing
  set showcmd

" Highlight matching parens
  set showmatch

  set completeopt=menu,preview
  
" Use the cool tab complete menu
  set wildmenu 
  set wildmode=list:longest,full

" have the mouse enabled all the time:
  set mouse=a

" * Text Formatting -- General

" don't make it look like there are line breaks where there aren't:
  set nowrap

" use indents of 2 spaces, and have them copied down lines:
  set expandtab
  set tabstop=2
  set softtabstop=2 
  set shiftwidth=2

  set autoindent
  set smartindent
  
""Set to auto read when a file is changed from the outside
  set autoread

" * Search & Replace
" show the `best match so far' as search strings are typed:
  set incsearch

" searching is case insensitive when all lowercase
  set ignorecase
  set smartcase
 
" assume the /g flag on :s substitutions to replace all matches in a line:
  set gdefault

" enable line numbers
  set number

" If possible, try to use a narrow line number column.
  if v:version >= 700
      try
        setlocal numberwidth=3
      catch
      endtry
  endif

" FILE BROWSING
" Settings for explorer.vim
  let g:explHideFiles='^\.'

" Settings fo rnetrw
  let g:netrw_list_hide='^\.,\~$'


" TAB COMPLETION FOR AUTO COMPLETE
  if has("eval")
      function! CleverTab()
          if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
              return "\<Tab>"
          else
              return "\<C-N>"
          endif
      endfun
      inoremap <Tab> <C-R>=CleverTab()<CR>
      inoremap <S-Tab> <C-P>
  endif

" ENABLE THE TAB BAR
  set tabline=%!MyTabLine()
  set showtabline=2 " 2=always

" MAKE BACKSPACE WORK IN INSERT MODE
  set backspace=indent,eol,start

" REMEMBER LAST POSITION IN FILE
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" MAKE IT EASY TO UPDATE/RELOAD_vimrc 
  :nmap ,s :source ~/.vimrc<cr>
  :nmap ,v :tabe ~/.vimrc<cr>
  
" RSPEC
  :nmap ,sh :! script/spec spec/helpers<cr>
  :nmap ,sm :! script/spec spec/models<cr>
  :nmap ,sv :! script/spec spec/views<cr>
  :nmap ,sc :! script/spec spec/controllers<cr>
  :nmap ,sf :! script/spec %<cr>
  :nmap ,c  :! rake cruise<cr>  

" exiting insert mode with command-i
  :imap <D-i> <esc>

" easy wrap toggling
  :map <D-r> :set wrap<cr>
  :map <D-R> :set nowrap<cr>

" typing pound pound will print out the string interpolation characters and move the cusor in the middle
  imap ## #{}<Left>

" typing percent percent will print out the erb output characters and move the cusor after the equals sign
  imap %% <%=%><Left><Left>

" make current word a symbol by prepending it with :
  map :: bi:<Esc>

" enclose curent word within double quotes
  map "" bi"<Esc>ea"<Esc>

" enclose curent word within single quotes
  map '' bi'<Esc>ea'<Esc>

" convert curent singly or double quoted word into to a symbol
  map ": bhr:elx
  map ': bhr:elx

" convert curent word as symbol into a double quoted string
  map :" F:r"ea"<Esc>

" convert curent word as symbol into a single quoted string
  map :' F:r'ea'<Esc>

  ""Nice statusbar
  set laststatus=2
  set statusline=\ "
  set statusline+=%f\ " file name
  set statusline+=[
  set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
  set statusline+=%{&fileformat}] " file format

  set statusline+=%h%1*%m%r%w%0* " flag
  set statusline+=%= " right align
  set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

  " title: update the title of the window?
  set   title

  " titlestring: what will actually be displayed
  set   titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70
  " Turn off rails bits of statusbar
  let g:rails_statusline=0

