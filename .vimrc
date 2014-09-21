set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" ..........................................................................
" Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
" ..........................................................................
" plugin from http://vim-scripts.org/vim/scripts.html
" ..........................................................................
" Plugin 'L9'
" ..........................................................................
" Git plugin not hosted on GitHub
" ..........................................................................
" Plugin 'git://git.wincent.com/command-t.git'
" ..........................................................................
" git repos on your local machine (i.e. when working on your own plugin)
" ..........................................................................
" Plugin 'file:///home/gmarik/path/to/plugin'
" ..........................................................................
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" emmet config
"  Enable in different mode
let g:user_emmet_mode='a'    "enable all function in all mode.


" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
" set mouse=a
" set bs=2

" Rebind <Leader> key
let mapleader = ","

" Bind nohl
" Removes hightlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" Enable syntax highlighting
" You need to reload this file for change to 
filetype off
filetype plugin indent on
syntax on

" Showing line numbers and length
set number  " show line numbers

" Real programmers don't use TABs but space
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Settings for Powerline
set laststatus=2
set t_Co=256

" Settings for color theme
" syntax enable
" set background=dark
" colorscheme solarized
" let g:solarized_termcolors=256

" Settings for ctrlp
" let g:ctrlp_max_height
set wildignore+=*.pyc
set wildignore+=_build/*
set wildignore+=*/coverage/*

" Settings for NERDTree
map <C-e> :NERDTreeToggle<CR>

" Settings for python-mode
map <Leader>g :call RepeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_repo_goto_def_newwin = "vnew"
let g:pymode_repo_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
