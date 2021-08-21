
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle For Managing Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()		" required, all plugins must appear after this line.

Plugin 'VundleVim/Vundle.vim'			" required, let Vundle manage Vundle.
Plugin 'vim-airline/vim-airline'		" Airline
Plugin 'vim-airline/vim-airline-themes'		" Airline Themes
Plugin 'ryanoasis/vim-devicons'			" Show file type icons

call vundle#end()		" required, all plugins must be added before this line.

filetype plugin indent on	" required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" 
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Always show statusline
set laststatus=2
set showtabline=2

syntax on
set number relativenumber

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'angr'

" Some useful key bindings

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
