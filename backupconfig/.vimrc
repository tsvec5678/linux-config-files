"this is a vim comment
"use these to help describe your vim settings
"bash script even works from running it outside of repo dir
execute pathogen#infect()
runtime bundle/vim-pathogen/autoload/pathogen.vim
syntax on
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab


set rtp+=/home/tsvec5678/.local/lib/python2.7/site-packages/powerline/bindings/vim/
"set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
