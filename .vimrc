set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins go below here
Plugin 'rust-lang/rust.vim'
Plugin 'dense-analysis/ale'
Plugin 'cespare/vim-toml'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
" Plugins go above here

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall	- installs plugins
" :PluginSearch foo	- searches for a plugin called foo
" :PluginClean		- removes unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put all non-plugin stuff after this line

" general quality of life settings
set number
set autoindent
set hidden
syntax on

" four space tabs
set tabstop=4
set shiftwidth=4
set expandtab

" custom mappings
nmap <C-n> :NERDTreeToggle<cr>

" lightline
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'darcula'
    \ }

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-gitgutter
let g:gitgutter_git_executable = "/usr/bin/git"

