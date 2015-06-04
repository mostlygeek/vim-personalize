set nocompatible               " be iMproved

" Vundle {
    " filetype must be off here for Vundle ...
    filetype off
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " REQUIRED: let Vundle manage Vundle
    " After updating these run: 
    "
    " :source $MYVIMRC
    " :BundleInstall    - install(update) bundles
    "   - probably need to :source $MYVIMRC first 
    "
    Bundle 'gmarik/vundle'
    
    " Utilities and Helpers
    Bundle "L9"
    Bundle "Raimondi/delimitMate"
    Bundle "Lokaltog/vim-easymotion.git"
    Bundle "scrooloose/nerdtree.git"
    Bundle "Shougo/neocomplcache.git"
    Bundle "godlygeek/tabular.git"
    Bundle "tpope/vim-surround.git"
    Bundle "tpope/vim-fugitive.git"

    " Syntax Highlighters
    Bundle "kchmck/vim-coffee-script.git"
    Bundle "digitaltoad/vim-jade.git"
    Bundle "wavded/vim-stylus.git"
    Bundle "jelera/vim-javascript-syntax.git"
    Bundle "briancollins/vim-jst.git"
    Bundle "mostlygeek/vim-json.git"
    Bundle "fatih/vim-go"
    Bundle "rodjek/vim-puppet"
    Bundle "vim-scripts/SQLComplete.vim"

    " Personalize vim to how I like it
    Bundle "mostlygeek/vim-personalize"

    " REQUIRED after all the Bundle initializations...
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
