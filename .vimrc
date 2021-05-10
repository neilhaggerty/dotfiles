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
set backspace=indent,eol,start  " more powerful backspacing                        
set shortmess=a                                                                    
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
let g:netrw_browse_split = 4                                                       
let g:netrw_altv=1                                                                 
let g:netrw_silent=1                                                               
" " Directory explorer width                                                       
let g:netrw_winsize = 25                                                           
augroup ProjectDrawer                                                              
  autocmd!                                                                         
  autocmd VimEnter * :Vexplore                                                     
augroup END                                                                        
" ============================================================================  
" " plugin settings (vim-plug)                                                                 
" ============================================================================  
call plug#begin('~/.vim/plugged')                                                  
Plug 'https://github.com/PProvost/vim-ps1.git'                                     
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
call plug#end()                                                                    
" ============================================================================
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
" ============================================================================
" ==================== Terraform plugin config ===============================
let g:terraform_align=1
" ============================================================================
" ==================== Syntax Hightlighting ==================================
au BufNewFile,BufRead Jenkinsfile setf groovy
