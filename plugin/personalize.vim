" General {
    filetype on
    syntax on
          
    " I don't like the folding
    set nofoldenable

    " Spaces are better than a tab character
    set expandtab
    set smarttab

    " Default to 4 character spacing
    set shiftwidth=4
    set softtabstop=4

    " Better backspace handling"
    " ref: http://vim.wikia.com/wiki/Erasing_previously_entered_characters_in_insert_mode
    set backspace=indent,eol,start

    " makes things faster ... http://stackoverflow.com/questions/307148/vim-scrolling-slowly
    set ttyfast

    " Line Numbers PWN!
    set number

    " Working/Backup Directories
    set backup
    set backupdir=~/.vim/backup
    set directory=~/.vim/tmp

    "Status line gnarliness
    set laststatus=2
    set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

    " Leave Insert mode by hitting "jj" , not really used too much
    " inoremap jj <ESC>j
    
    " Look and Feel and Colours ... {
    "   colorscheme solarized
    "   set background=dark
    "}
" }
"

" Editing Tweaks {
    " this will turn <CR> to empty a new line without entering insert mode
    map <CR> o<Esc>

    " this will allow Shift Tab in INSERT mode to detab
    inoremap <S-Tab> <C-d>

    " abbreviations for common things i type
    " :help :abbreviate
    iab cl console.log
    iab mo msg.out
    iab me msg.err
"}


" Searching {
    " Ignore cases in searches
    set ignorecase

    " if search pattern contains an upper case char, it will do a case-sensitive
    " search
    set smartcase

    " Tagname searching / moving
    nnoremap / /\v
    vnoremap / /\v

    " smartcase = all lower case, case insensitve, w/ uppercase
    " do a case sensitive search
    set ignorecase
    set smartcase

    " global searches by default
    set gdefault

    " highlight search as you type
    set incsearch
    set showmatch
    set hlsearch

    " clear out search, makes clearing highlights easier
    nnoremap <leader><space> :noh<cr>
" }

" neocomplcache {
    " tab complete
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" }

" Fuzzy Finder Tweaks {
    nmap <leader>f :FufFile **/*<CR>
    nmap <leader>b :FufBuffer<CR>
    nmap <leader>l :FufLine<CR>
    let g:fuf_file_exclude = '\v\~$'
        \ . '|\.(o|exe|dll|bak|orig|swp|class)$'
        \ . '|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
        \ . '|(^|[/\\])node_modules[/\\]'
        \ . '|(^|[/\\])generated[/\\]'
"}

" Navigation Tweaks {
    " Tab Navigation, allows quick scrolling between tabs/viewports
    nmap <S-Tab> :tabn<CR>
    nmap ~ :tabp<CR>
    nmap <leader>n :tabnew<CR>

    " make it easier to move between split windows
    " using ctrl+hjkl
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l
    
    " Open NERDTree quickly
    nmap <leader>t :NERDTree<CR>

    " -------------------------------------- 
    " Move around w/ EasyMotion w/ less key
    " -------------------------------------- 
    
    " - (hyphen) EasyMotion line updward
    nmap - :call EasyMotion#JK(0, 1)<CR>

    " _ (underscore) jump backward to beginning of word
    nmap _ :call EasyMotion#WBW(0, 1)<CR>

    " = (equal) EasyMotion line downward
    nmap = :call EasyMotion#JK(0, 0)<CR>

    " + jump forward to beginning of a word
    nmap + :call EasyMotion#WBW(0, 0)<CR>

    " in combo w/ the shortcuts above, make the jumps easier 
    " to reach w/ left hand on home row, but more repeats
    "
    " Notice the order of keys, since reaching for 
    " "qwer" is a bit slower than "asdf" I intermix
    " them to make jumping easier
    let g:EasyMotion_keys = 'qawsedrf'

    " change the highlight so it is easier to see
    " w/ the solarized theme
    hi EasyMotionTarget ctermbg=none ctermfg=white

" }

" Misc Tweaks {
    " fix bash $() match as an Error for syntax highlighting
    " ref: http://stackoverflow.com/a/5423808
    let g:is_posix = 1
" }
