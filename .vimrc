"------------------------------------------------------------------
"VumbleVim
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'html-xml-tag-matcher'
" Track the engine.
"--ultisnips--------------------------------------------------------
Plugin 'SirVer/ultisnips'
"
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"
" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
"set rtp+=~/.vim/UltiSnips
set rtp+=~/.vim/bundle/ultisnips/
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/bundle/ultisnips/"
let g:UltiSnipsSnippetDirectories="~/.vim/bundle/ultisnips/"
"let g:UltiSnipsSnippetDirectories="~/.vim/ultisnips_rep/"
"
" Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'
let g:NERDCreateDefaultMappings = 1
let mapleader = ","
"
"--ultisnips--------------------------------------------------------
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lin
"
"--------------------------------------
"let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme delek
set wrap
"colorscheme solarized
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set autoindent "set paste to disable
set nostartofline
set ruler
set visualbell
set number
set showmatch
set linebreak
set showbreak=++++
set cursorline
"set scrolloff=0 "line follows always the cursor
set scrolloff=999 "number of context lines you would like to see above and below the cursor
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list "Display all Tabs and Ends of lines (Dislays these hidden characters)
"----tabstops--------------------------
"set expandtab "insert space characters whenever the tab key is pressed, if you want to enter a real tab character use Ctrl-V<Tab>, use :retab to change all the existing tab characters to match the current tab settings
"set tabstop=2
"set softtabstop=2 " makes the spaces feel like real tabs
"set shiftwidth=2
"set noexpandtab
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab 
"----key mappings----------------------
nmap <space> <C-D>
nmap <backspace> <C-U>
nmap 11 :w<enter>
nmap 22 :wq<enter>
"
" F U N C T I O N S
"
so ~/.vim/functions/tagselection.vim
