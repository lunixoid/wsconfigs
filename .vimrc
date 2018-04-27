version 7.0

set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set showmatch
set incsearch
set hlsearch
set autowrite
set title
set nu

set encoding=utf-8
set fileencodings=utf-8,euc-kr
set bg=dark

syntax on
autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'
Plugin 'taglist.vim'
Plugin 'ctrlp.vim'
Plugin 'The-NERD-Tree'
Plugin 'snipMate'
Plugin 'airblade/vim-gitgutter'

" for writing
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'reedes/vim-pencil'

call vundle#end()            " required
filetype plugin indent on    " required

" plugin airline configure
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='molokai'

" vim color schema
colorscheme molokai

" taglist configure
let Tlist_Auto_Open=1
let Tlist_Use_Right_Window=1
let Tlist_Exit_OnlyWindow=1


"" Register Key map
"
map <F10> :Goyo <bar> :Limelight!! <bar> :TogglePencil <CR>

