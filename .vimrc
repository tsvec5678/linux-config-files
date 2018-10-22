"this is a vim comment
"use these to help describe your vim settings
"symbolic link working properly
"confirmed that symbolic link works
"bash script even works from running it outside of repo dir


execute pathogen#infect()
"runtime /autoload/pathogen.vim
syntax on

"sets all comment colors to 207 (on xterm 0-255 color scale)
hi comment ctermfg=207

filetype plugin indent on

set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']


" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab


"user install for VIM
"set rtp+=/home/tsvec5678/.local/lib/python2.7/site-packages/powerline/bindings/vim

"global install for vim, STICK TO USER
"set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/

set number
set laststatus=2
set t_Co=256

