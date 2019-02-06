set nocompatible
filetype off

" init vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vundle packages
Plugin 'xoria256.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'PProvost/vim-ps1'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'chr4/nginx.vim'
"Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'iamcco/markdown-preview.vim'

call vundle#end()

" vim options
syntax on
filetype plugin indent on
set autoindent

" color settings
set t_Co=256
colorscheme smyck

" Set vim colorscheme based on iTerm profile
let iterm_profile = $ITERM_PROFILE
if iterm_profile == "macOS Smyck"
  colorscheme smyck
elseif iterm_profile == "Solarized Dark"
  colorscheme solarized
else
  colorscheme xoria256
  "colorscheme phosphor
endif

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set showtabline=1
set number
set hlsearch
set laststatus=2
set splitbelow
set splitright
set noshowmode

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
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

" NERDTreeToggle thru Ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

" abbreviations
abbr Q q
abbr Wq wq

" vim-airline configuration
let g:airline_powerline_fonts = 1
if iterm_profile == "Solarized Dark"
  let g:airline_theme = "solarized"
  let g:airline_solarized_bg = "dark"
endif
