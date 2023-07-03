" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set wrap
set autoindent
set hlsearch
set incsearch

set number
set mouse=a
set numberwidth=1
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=4

syntax enable
syntax on

set clipboard=unnamed 

set hlsearch
set incsearch
set shortmess-=S

" Deactivate cursor keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

call plug#begin('~/vimfiles/autoload')

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" HTML
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

Plug 'luochen1990/rainbow'

call plug#end()

let mapleader="\ "
map <leader>q :q<CR>
map <leader>w :w<CR>
map <leader>wq :wq<CR>
 
map <leader>n :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
nmap <Leader>s <Plug>(easymotion-s2)

let g:closetag_filenames = '*.html,*.htm'

" Config for java
map <leader>j :w<CR>:!javac % && java %:r<CR>
map <leader>jr :!java %:r<CR>
autocmd FileType java setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab

" Config for python
 map <leader>p :w<CR>:!python %<CR>
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab

" Configuración del complemento Rainbow
let g:rainbow_active = 1
