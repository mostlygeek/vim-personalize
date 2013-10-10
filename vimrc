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
    
    Bundle "altercation/vim-colors-solarized.git"
    
    " Utilities and Helpers
    Bundle "L9"
    Bundle 'FuzzyFinder'
    Bundle "mattn/zencoding-vim" 
    Bundle "Raimondi/delimitMate"
    Bundle "Lokaltog/vim-easymotion.git"
    Bundle "scrooloose/nerdtree.git"
    Bundle "Shougo/neocomplcache.git"
    Bundle "godlygeek/tabular.git"
    Bundle "tpope/vim-surround.git"
    Bundle "tpope/vim-fugitive.git"
    Bundle "vim-scripts/ShowMarks.git"

    " Syntax Highlighters
    Bundle "kchmck/vim-coffee-script.git"
    Bundle "digitaltoad/vim-jade.git"
    Bundle "wavded/vim-stylus.git"
    Bundle "jelera/vim-javascript-syntax.git"
    Bundle "briancollins/vim-jst.git"
    Bundle "elzr/vim-json.git"
    Bundle "jnwhiteh/vim-golang"


    " Personalize vim to how I like it
    Bundle "mostlygeek/vim-personalize"

    " REQUIRED after all the Bundle initializations...
    filetype plugin indent on

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
    autocmd FileType coffee,js,styl,css,go,py autocmd BufWritePre <buffer> :%s/\s\+$//e

    autocmd FileType json setlocal foldmethod=syntax
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
    
    Bundle "altercation/vim-colors-solarized.git"
    
    " Utilities and Helpers
    Bundle "L9"
    Bundle 'FuzzyFinder'
    Bundle "mattn/zencoding-vim" 
    Bundle "Raimondi/delimitMate"
    Bundle "Lokaltog/vim-easymotion.git"
    Bundle "scrooloose/nerdtree.git"
    Bundle "Shougo/neocomplcache.git"
    Bundle "godlygeek/tabular.git"
    Bundle "tpope/vim-surround.git"
    Bundle "tpope/vim-fugitive.git"
    Bundle "vim-scripts/ShowMarks.git"

    " Syntax Highlighters
    Bundle "kchmck/vim-coffee-script.git"
    Bundle "digitaltoad/vim-jade.git"
    Bundle "wavded/vim-stylus.git"
    Bundle "jelera/vim-javascript-syntax.git"
    Bundle "briancollins/vim-jst.git"
    Bundle "elzr/vim-json.git"
    Bundle "jnwhiteh/vim-golang"


    " Personalize vim to how I like it
    Bundle "mostlygeek/vim-personalize"

    " REQUIRED after all the Bundle initializations...
    filetype plugin indent on

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
    autocmd FileType coffee,js,styl,css,go,py autocmd BufWritePre <buffer> :%s/\s\+$//e

    autocmd FileType json setlocal foldmethod=syntax

    " use \jf to format json
    map <leader>jf <Esc>:%!python -m json.tool<CR>

set modelines=5

    " use \jf to format json
    map <leader>jf <Esc>:%!python -m json.tool<CR>

set modelines=5
