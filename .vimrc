set nocompatible
filetype off

" init vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle packages
Bundle 'xoria256.vim'
Plugin 'sudar/vim-arduino-syntax'

call vundle#end()

" vim options
filetype plugin indent on
syntax on
colorscheme xoria256
"set background=dark
set expandtab
set tabstop=2
set shiftwidth=2
set showtabline=2
set number
"set wrap
"set backspace=0
set t_Co=256
"set colorcolumn=+1
"set textwidth=80
set hlsearch

" disable arrow keys to force using hjkl
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

" abbreviations
abbr Q q
