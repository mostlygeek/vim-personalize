set nocompatible               " be iMproved
filetype off                   " required for vundle

" Vundle {
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'gmarik/Vundle.vim'
    
    " Utilities and Helpers
    Plugin 'L9'
    Plugin 'Raimondi/delimitMate'
    Plugin 'Lokaltog/vim-easymotion.git'
    Plugin 'scrooloose/nerdtree.git'
    Plugin 'Shougo/neocomplcache.git'
    Plugin 'godlygeek/tabular.git'
    Plugin 'tpope/vim-surround.git'
    Plugin 'tpope/vim-fugitive.git'

    " Syntax Highlighters
    Plugin 'kchmck/vim-coffee-script.git'
    Plugin 'digitaltoad/vim-jade.git'
    Plugin 'wavded/vim-stylus.git'
    Plugin 'jelera/vim-javascript-syntax.git'
    Plugin 'briancollins/vim-jst.git'
    Plugin 'mostlygeek/vim-json.git'
    Plugin 'fatih/vim-go'
    Plugin 'rodjek/vim-puppet'
    Plugin 'vim-scripts/SQLComplete.vim'

    " Personalize vim to how I like it
    Plugin 'mostlygeek/vim-personalize'

    " REQUIRED after all the Plugin initializations...
    call vundle#end()
    filetype plugin indent on

" } end vundle

let g:neocomplcache_enable_at_startup = 1

" Set color schemes 
colorscheme mostlygeek

" Show syntax highlighting groups for word under cursor
" using Ctrl+Shift+P
" See: http://vimcasts.org/episodes/creating-colorschemes-for-vim/
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Trim tailing white spaces
" ref: http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd FileType c,coffee,js,styl,css,go,py,jade,puppet autocmd BufWritePre <buffer> :%s/\s\+$//e

autocmd FileType json setlocal foldmethod=syntax
autocmd FileType json set shiftwidth=2

autocmd BufRead,BufNewFile *.sql set filetype=mysql

" use \jf to format json
map <leader>jf <Esc>:%!python -m json.tool<CR>

set modelines=5

" vim-json, disable concealing of quotes
let g:vim_json_syntax_conceal = 0

" custom go tweaks for vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
