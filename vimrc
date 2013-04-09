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

    " Syntax Highlighters
    Bundle "kchmck/vim-coffee-script.git"
    Bundle "digitaltoad/vim-jade.git"
    Bundle "wavded/vim-stylus.git"
    Bundle "jelera/vim-javascript-syntax.git"

    " Personalize vim to how I like it
    Bundle "mostlygeek/vim-personalize"

    " REQUIRED after all the Bundle initializations...
    filetype plugin indent on

    let g:neocomplcache_enable_at_startup = 1

    " Set color schemes 
    " Example
    "
    " colorscheme wombat256mod
    " set background=dark