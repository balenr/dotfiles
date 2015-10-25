set nocompatible
filetype off

" init vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vundle packages

" color theme
Bundle 'xoria256.vim'
Bundle 'tomasr/molokai'

" arduino syntax
Plugin 'sudar/vim-arduino-syntax'

" vim status line
Plugin 'bling/vim-airline'

call vundle#end()

" vim options
syntax on
filetype plugin indent on
set autoindent
colorscheme xoria256
"colorscheme molokai
"set background=dark
set expandtab
set tabstop=2
set shiftwidth=2
set showtabline=2
set number
"set wrap
"set backspace=0
set t_Co=256
set hlsearch
"set ruler
set laststatus=2

" disable arrow keys to force using hjkl
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

" abbreviations
abbr Q q

set backupdir=~/.vimbackup
set directory=/var/tmp,/tmp

" Powerline fonts
let g:airline_powerline_fonts = 1
