" .vimrc configurations
" http://...

" environment {
    " basic {
 "       set nocompatible  " must be first line
        set noswapfile    " no swap files
        set nobackup      " no backup files
        set nofoldenable  " disable code folding
    " }

    " bundles {
        " the next two lines ensure that ~./vim/bundle system works
        runtime! autoload/pathogen.vim
        silent! call pathogen#helptags()
        silent! call pathogen#runtime_append_all_bundles()
    " }
" }

" general {
    filetype plugin indent on   " Automatically detect file types.
    set mouse=a                 " Automatically enable mouse usage
" }

" ui {
    syntax enable      " syntax highlighting
    set tabpagemax=15  " only show 15 tabs
    set showmode       " display the current mode
    set cursorline     " highlight current line
    set nu             " Line numbers on
    set showmatch      " show matching brackets/parenthesis
    set incsearch      " find as you type search
    set hlsearch       " highlight search terms
    set winminheight=0 " Windows can be 0 line high 
    set ignorecase     " case insensitive search
    set smartcase      " case sensitive when uc present

    " soft line width margin
    set colorcolumn=81
    highlight ColorColumn ctermbg=5

    " Turn on nerdtree at startup
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
    let g:NERDTreeWinPos = "left"
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" }

" formatting {
    set nowrap            " wrap long lines
    set autoindent        " indent at the same level of the previous line
    set shiftwidth=4      " use indents of 4 spaces
    set expandtab 	  	  " tabs are spaces, not tabs
    set tabstop=4 		  " an indentation every four columns
    set softtabstop=4 	  " let backspace delete indent
" }

" theme {
    set t_Co=256

    " line numbers
    hi LineNr ctermfg=grey ctermbg=NONE cterm=NONE
" }
