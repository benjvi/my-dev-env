" make it easy to install plugins
" https://github.com/tpope/vim-pathogen
call pathogen#infect()

" spaces are better than tabs
set expandtab
set shiftwidth=4

" enable syntax highlighting
filetype on
filetype plugin on
syntax enable

" associate non standard filetypes
au BufRead,BufNewFile *.shlib setfiletype sh
au BufRead,BufNewFile *.bats setfiletype sh
au BufRead,BufNewFile *.bats setfiletype sh
au BufRead,BufNewFile *.jenkinsfile setfiletype groovy
au BufRead,BufNewFile *.md setfiletype markdown


" enable spellchecking in markdown files
autocmd FileType markdown setlocal spell

" copy the indentation from the previous line, when starting a new line
set autoindent

" show line numbers
set number 

" using vim-go
" https://github.com/fatih/vim-go
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  
