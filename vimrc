set nocompatible               " be iMproved
filetype off                   " required for vundle

" Installation using https://github.com/junegunn/vim-plug
" hints:  reload config: source ~/.vimrc, install: PluginInstall
"
call plug#begin('~/.vim/plugged')

    Plug 'L9'
    Plug 'Raimondi/delimitMate'
    Plug 'Lokaltog/vim-easymotion'
    Plug 'scrooloose/nerdtree'
    Plug 'Shougo/neocomplcache'
    Plug 'godlygeek/tabular'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'

    Plug 'kchmck/vim-coffee-script'
    Plug 'digitaltoad/vim-jade'
    Plug 'wavded/vim-stylus'
    Plug 'jelera/vim-javascript-syntax'
    Plug 'briancollins/vim-jst'
    Plug 'mostlygeek/vim-json'
    Plug 'fatih/vim-go'
    Plug 'rodjek/vim-puppet'
    Plug 'vim-scripts/SQLComplete.vim'
    Plug 'Chiel92/vim-autoformat'

    " Personalize vim to how I like it
    Plug 'mostlygeek/vim-personalize'

    " Colour Schemes
    Plug 'dylanaraps/crayon'

call plug#end()

let g:neocomplcache_enable_at_startup = 1

" Set color schemes 
" Using iterm2 - set terminal to: xterm-256color
" Use Dark background preset in colors
"colorscheme mostlygeek

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

" map \f to autoformat
map <leader>f <Esc>:Autoformat<CR>

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
