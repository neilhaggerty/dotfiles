" ============================================================================  
" VIM Settings                                                                     
" ============================================================================  
syntax on                                                                          
highlight Search cterm=NONE ctermfg=black ctermbg=yellow                           
set autoindent
set smartindent
set mouse=a
set nu                                                                             
set hlsearch                                                                       
set incsearch                                                                      
set tabstop=4                                                                      
set shiftwidth=0                                                                   
set expandtab                                                                      
set colorcolumn=120
set modeline                                                                       
set backspace=indent,eol,start  " more powerful backspacing                        
set shortmess=a                                                                    
set mmp=2000
set scrolloff=10
set wildmenu
set noequalalways
" " nnoremap i :noh<cr>i                                                               
" ============================================================================  
" " netrw settings                                                                 
" ============================================================================  
" " Treeview                                                                       
let g:netrw_liststyle = 3                                                          
" " Get rid of top banner                                                          
let g:netrw_banner = 0                                                             
" " Open files vertical split: 1 - Horizontal, 2 - Vertical, 3 - Tab, 4 - Prev  
" " Window                                                                         
let g:netrw_browse_split = 4 
let g:netrw_altv=1
let g:netrw_silent=1                                                               
" " Directory explorer width                                                       
let g:netrw_winsize = 10
" ============================================================================  
" " Vim Scripts                                                                 
" ============================================================================  
" " Create the side explorer and what happens when you select a file
augroup ProjectDrawer                                                              
  autocmd!                                                                         
  autocmd VimEnter * :Vexplore                                                     
augroup END                                                                        
" If current file is yaml, set indentation to 2 spaces
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 expandtab
" " Use indent folding followed by manual folding
" " augroup vimrc
" "   au BufReadPre * setlocal foldmethod=indent
" "   au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
" " augroup END
" ============================================================================  
" " plugin settings (vim-plug)                                                                 
" ============================================================================  
call plug#begin('~/.vim/plugged')                                                  
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'hashivim/vim-terraform'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
 call plug#end()                                                                    
" " ============================================================================
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
" ============================================================================
" ==================== Terraform plugin config =================================
let g:terraform_align=1
" ============================================================================
" ==================== Syntax Hightlighting ==================================
au BufNewFile,BufRead Jenkinsfile setf groovy
" ============================================================================
" ==================== Notes Settings ========================================
let g:notes_directories = ['~/Documents/Notes']
let g:notes_suffix = '.md'
let g:notes_title_sync = 'change_title'
