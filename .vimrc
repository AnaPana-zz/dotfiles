set nocompatible
source plugins.vim

syntax enable
filetype plugin indent on

" keeps selection after indenting
vnoremap < <gv
vnoremap > >gv

" fix capitol writing combos, when I don't unpress shift fast enough
" doesn't work yet
command! W w
command! Wq wq
command! Q q
command! Bd bd
command! BD bd

set encoding=utf8

" case insensitive vim comands
set ignorecase

" these two options set an absolute number for the current line
" and the relative number
set relativenumber
set number

" show matching parenthesis
set showmatch

set foldmethod=indent
set foldlevel=99
