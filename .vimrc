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

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Easy split navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" easier moving between tabs
map <Leader>n <ESC>:tabprevious<CR>
map <Leader>m <ESC>:tabnext<CR>

" The Smash Escape
inoremap jk <Esc>
inoremap kj <Esc>

" Insert blank lines without going into insert mode
nmap t o<ESC>k
nmap T O<ESC>j

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

" Settings for NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDRemoveExtraSpaces = 1

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Settings for Powerline
set laststatus=2
set t_Co=256
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9

" Settings for YouCompleteMe
let g:ycm_show_diagnostics_ui = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

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
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator " modes)
" ]]            Jump on next class or function (normal, visual, operator " modes)
" [M            Jump on previous class or method (normal, visual, operator " modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
map <Leader>g :call RepeGotoDefinition()<CR>
let g:pymode_folding = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
