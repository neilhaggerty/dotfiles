" ============================================================================
" VUNDLE SETTINGS
" ============================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" ============================================================================
" VIM Settings
" ============================================================================
syntax on
highlight Search cterm=NONE ctermfg=black ctermbg=yellow
set nu
set hlsearch
set incsearch
set tabstop=4
set expandtab
set colorcolumn=80
set cursorcolumn
set cursorline
nnoremap i :noh<cr>i
" ============================================================================
" " netrw settings
" ============================================================================
" " Treeview
let g:netrw_liststyle = 3
" " Get rid of top banner
let g:netrw_banner = 0
" " Open files vertical split: 1 - Horizontal, 2 - Vertical, 3 - Tab, 4 - Prev
" " Window
let g:netrw_browse_split = 0
" ============================================================================
