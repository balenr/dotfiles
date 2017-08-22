" init vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vundle packages
Plugin 'xoria256.vim'
Plugin 'powerline/powerline', {'rtp':'powerline/bindings/vim/'}
Plugin 'ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'PProvost/vim-ps1'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

call vundle#end()

" vim options
syntax on
filetype plugin indent on
set autoindent

" Set vim colorscheme based on iTerm profile
let iterm_profile = $ITERM_PROFILE
if iterm_profile == "macOS Smyck"
  colorscheme smyck
else
  colorscheme xoria256
endif

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set showtabline=2
set number
set t_Co=256
set hlsearch
set laststatus=2
set splitbelow
set splitright
set noshowmode

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
"map <C-n> :NERDTreeToggle<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

" abbreviations
abbr Q q
abbr Wq wq
