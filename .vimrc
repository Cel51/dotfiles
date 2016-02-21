set encoding=utf-8
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-perl/vim-perl'
Plugin 'yko/mojo.vim'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()
filetype plugin indent on

" --- Setup colorscheme ---
syntax on
set number
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
set background=dark
colorscheme jellybeans

" --- Setup airline ---
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only=1

set laststatus=2

let g:airline_detect_paste = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" --- Setup syntastic ---
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_perl_checker = 1

let g:syntastic_c_checkers = [ 'clang_check' ]
let g:syntastic_perl_checkers = [ 'perl' ]
let g:syntastic_scala_checkers = [ 'scalac' ]

" --- Setup Mojolicious ---
let mojo_highlight_data = 1

" --- Whitespace ---
set nowrap
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start

set autoindent
set smarttab

autocmd FileType javascript setlocal tabstop=2 shiftwidth=2
autocmd FileType make setlocal nomodeline
autocmd FileType perl setlocal tabstop=2 shiftwidth=2
autocmd FileType tex setlocal wrap linebreak
autocmd FileType text setlocal wrap linebreak

" --- Misc ---
set mouse=a

set hlsearch incsearch
set ignorecase smartcase

set ruler
set showcmd

" --- Load bepo remap ---
if !empty(glob('~/.vimrc.bepo'))
	source ~/.vimrc.bepo
end

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
