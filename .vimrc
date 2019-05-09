" ============================================================================
" VIM Settings                                                                     
" ============================================================================
syntax on
highlight Search cterm=NONE ctermfg=black ctermbg=yellow
set nu
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=0
set expandtab
set colorcolumn=80
set modeline
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
