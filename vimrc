set nocompatible               " be iMproved
filetype off                   " required for vundle

" Installation using https://github.com/junegunn/vim-plug
" hints:  reload config: source ~/.vimrc, install: PlugInstall
"
call plug#begin('~/.vim/plugged')
    " Personalize vim to how I like it
    Plug 'mostlygeek/vim-personalize'

    " Colour Schemes
    Plug 'mostlygeek/rdark-terminal'

"    Plug 'L9'
    Plug 'Raimondi/delimitMate'
    Plug 'Lokaltog/vim-easymotion'
    Plug 'scrooloose/nerdtree'
    Plug 'Shougo/neocomplcache'
    Plug 'godlygeek/tabular'
    Plug 'tpope/vim-surround'
    Plug 'jelera/vim-javascript-syntax'
    Plug 'mostlygeek/vim-json'
    Plug 'fatih/vim-go'
    Plug 'vim-scripts/SQLComplete.vim'
    Plug 'vim-scripts/DeleteTrailingWhitespace'
    Plug 'vim-scripts/ShowTrailingWhitespace'
    Plug 'jparise/vim-graphql'

    call plug#end()

let g:neocomplcache_enable_at_startup = 1

" Set color schemes
" Using iterm2 - set terminal to: xterm-256color
" Use Dark background preset in colors
colorscheme rdark-terminal
let g:ShowTrailingWhitespace = 1
highlight ShowTrailingWhitespace ctermbg=Red guibg=Red
"
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

autocmd FileType json setlocal foldmethod=syntax
autocmd FileType json set shiftwidth=2

autocmd BufRead,BufNewFile *.sql set filetype=mysql

" use \jf to format json
map <leader>jf <Esc>:%!python -m json.tool<CR>

" map \f to autoformat
map <leader>f <Esc>:Autoformat<CR>

set modelines=5


" custom go tweaks for vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" kill whitespace
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

" change status bar colour based on insert mode
" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=grey gui=bold,reverse
endif

