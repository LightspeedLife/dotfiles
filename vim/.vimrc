" 
" ____    ____  __  .___  ___. .______        ______ 
" \   \  /   / |  | |   \/   | |   _  \      /      |
"  \   \/   /  |  | |  \  /  | |  |_)  |    |  ,----'
"   \      /   |  | |  |\/|  | |      /     |  |     
"    \    /    |  | |  |  |  | |  |\  \----.|  `----.
"     \__/     |__| |__|  |__| | _| `._____| \______|
"                                                              
"
"
"""""""""""""""""""
" Initializations "
"""""""""""""""""""
" Because I don't plan on making this rc portable to vi and other clones
set nocompatible
filetype plugin indent on
set viminfo=!,%,'100,<50,r/tmp,s10,h

" Load Plugins "
runtime! plugin-config/master.vim

""""""""""""""""""
" Prettification "
""""""""""""""""""
runtime! disp/pretty.vim

"""""""""""""
" Usability "
"""""""""""""
runtime maps/*map.vim
runtime misc/abbr.vim

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
runtime macros/matchit.vim

" various settings
set nrformats=bin,octal,hex,alpha
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
				" Doesn't seem to work (at least as I expect
				" it to)
set ignorecase                  " Case insensitive search
set number relativenumber       " Obviously useful setting is useful (obviously).
set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Proper backspace behavior.
set hidden
                               " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right
                               " of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
                               " around and `<CR>` to validate.
set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=1                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
