set nocompatible

"turn syntax highlighting on
set t_Co=256
syntax on
filetype off 
"enable filetype plugins

"add vundle to runtimepath 
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
"Plugin 'valloric/youcompleteme'

call vundle#end()

filetype on
filetype plugin on
filetype indent on

"configuring nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"configuring syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 3
let g:syntastic_loc_list_height = 5
let g:syntastic_quiet_messages = { "level": "warnings" }

"configure NerdCommenter
let g:NERDSpaceDelims=1

"Maps ctrlp to enter in normal mode
let g:ctrlp_map = '<c-p>'
let g:ctrlp_by_filename = 0

"hide the mouse cursor and disable it
set mouse-=a
set mousehide

"turn on wild menu
set wildmenu 
"always show current position
set ruler

"change height of the command bar
set cmdheight=2

"ignore cases when searching
set ignorecase

"away with the swap files
set noswapfile

" indenting rules
set tabstop=4 "tab width is now 2 spaces
set expandtab "expand tabs to spaces
set textwidth=120 "wrap lines at 120
set autoindent " use indentation of previous line 
set smartindent "smart indenting for c
set cindent "smart indenting for c
set shiftwidth=4

set clipboard=unnamed "allow for pasting from windows clipboard and copying to clipboard from vim
set number "turn line numbers on

set showmatch "show matching braces

"show the status line
set laststatus=2

"add a mapleader to add functions

"fast saving for files 
nmap <leader>w :w!<cr>
noremap <leader>p :noh<cr>

" change colorscheme
colorscheme elflord

" assign default white to normal text
hi Normal ctermfg=White

"remap ; to : for all modes and add normal : functionality
map ; :
noremap ;; ;

"Center my search
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz


" disable highlighting when searching for stuff
set hlsearch

" get rid of the damn stupid sounds after all sheesh
set noerrorbells visualbell t_vb=

" improve the speed and smoothness of rendering
set lazyredraw

let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++14'
