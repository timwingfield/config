call pathogen#runtime_append_all_bundles()

" enable line numbers
  set number
  setlocal numberwidth=3

" These two enable syntax highlighting
  set nocompatible
  syntax on
  
" set initial color scheme
  colors twilight2

" set intial size
  set lines=50 columns=150

runtime general_config.vim
runtime key_mappings.vim

:filetype plugin on
:abbr hte the
:abbr teh the

" Markdown syntax highlighting
  augroup mkd
    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
    autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:>
    autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:>
  augroup END

vnoremap <silent> <localleader>c :CoffeeCompile<CR>

" defaults localvimrc file to not prompt to source the .lvimrc file
let g:localvimrc_ask=0
