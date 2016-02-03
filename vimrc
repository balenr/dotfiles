set nocompatible
filetype off

" init vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vundle packages
Plugin 'xoria256.vim'
Plugin 'tomasr/molokai'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'bling/vim-airline'
Plugin 'ctrlp.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'scrooloose/nerdtree'
Plugin 'edkolev/tmuxline.vim'
Plugin 'edkolev/promptline.vim'

call vundle#end()

" vim options
syntax on
filetype plugin indent on
set autoindent
color xoria256
" set background=dark
set expandtab
set tabstop=2
set shiftwidth=2
set showtabline=2
set number
set t_Co=256
set hlsearch
set laststatus=2

" disable arrow keys to force using hjkl
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

" abbreviations
abbr Q q

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme = "dark"
