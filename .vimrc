set nocompatible

let mapleader = " "

set t_Co=256
set gfn=Monospace\ 13
syntax on
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

set number
set cursorline
set colorcolumn=80
set ruler         " show the cursor position all the time
set showcmd       " display incomplete command

set hlsearch
set incsearch     " do incremental searching
set ignorecase    " case insensitive searching (unless specified)
set smartcase

set undofile
set history=100

set wildmode=longest:full,full
set wildmenu

set mouse=a
set scrolloff=8 

set tabstop=2
set expandtab
set shiftwidth=2

set splitbelow
set splitright

set matchpairs+=<:>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

set diffopt+=vertical

nnoremap <silent> <Right> :vertical resize +5<cr>
nnoremap <silent> <Left> :vertical resize -5<cr>
nnoremap <silent> <Up> :resize +5<cr>
nnoremap <silent> <Down> :resize -5<cr>
 
nmap <F4> :cp<cr>
nmap <F5> :cn<cr>

map <silent> <F10> "<Esc>:silent setlocal spell! spelllang=fr<CR>"
map <silent> <F11> "<Esc>:silent setlocal spell! spelllang=en<CR>"
nnoremap <F8> [s
nnoremap <F9> ]s
nnoremap <F1> z=

nnoremap <C-c> :bp\|bd #<CR>


filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'

Plugin 'vim-airline/vim-airline'
set laststatus=2

Plugin 'scrooloose/nerdtree'
nmap <F6> :NERDTreeToggle<CR>

Plugin 'majutsushi/tagbar'
nmap <F7> :TagbarToggle<CR>

Plugin 'fholgado/minibufexpl.vim'
let g:miniBufExplorerAutoStart = 1
nmap <F2> :MBEbp<cr>
nmap <F3> :MBEbn<cr>

Plugin 'JuliaEditorSupport/julia-vim'

Plugin 'easymotion/vim-easymotion'
Plugin 'lnl7/vim-nix'

call vundle#end()
filetype plugin indent on

