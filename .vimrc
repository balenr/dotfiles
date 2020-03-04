""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim configuration file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

" initialize vundle
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
" Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-repeat'
Plugin 'ryanoasis/vim-devicons'

call vundle#end() "required,  all packages must appear above this line

" vim options
filetype plugin indent on
set autoindent
syntax on

" color settings
set background=dark
colorscheme peaksea

set autoread
set tabstop=2
set shiftwidth=2 " indenting is 2 spaces, should the same as softtabstop for consistency
set softtabstop=2 " number of spaces inserted when using tab
set expandtab " use spaces instead of actual tab character
set number " show line numbers
set relativenumber " use relative line numbers
set nohlsearch " disable search highlighting
set laststatus=2 " always show status bar
set showtabline=2 " always show tab bar at the top
set noshowmode " because the normal showmode conflicts with vim-airline

"set cursorline
highlight CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue ctermfg=white

" Environment (GUI)
if has('gui_running')
  " GUI Vim
  set guifont=Menlo\ Regular\ for\ Powerline:h14

  if has('gui_macvim')
    " Full screen means FULL screen
    set fuoptions=maxvert,maxhorz
  else
    " Non-MacVi GUI, like Gvim
  end
else
  " Console Vim
  " For me, this means Terminal.app
  
  " Mouse support
  set mouse=a
endif

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" disable arrow keys to force using hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" NERDTreeToggle thru Ctrl-n
noremap <C-n> :NERDTreeToggle<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

" abbreviations
cabbrev Q q
cabbrev Wq wq

" vim-airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = "peaksea"
