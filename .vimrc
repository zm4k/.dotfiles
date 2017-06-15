"---------------
" P L U G I N S 
"---------------
"
"--Vundle--
"
set nocompatible "required
filetype off "required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' "let Vundle manage Vundle, required
"
"--UltiSnips--
"
Plugin 'SirVer/ultisnips' "UltiSnip engine
Plugin 'honza/vim-snippets' "handles the actual snippets
set rtp+=~/.vim/bundle/ultisnips/
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/bundle/ultisnips/"
let g:UltiSnipsSnippetDirectories="~/.vim/bundle/ultisnips/"
"
"--NerdCommenter--
"
Plugin 'scrooloose/nerdcommenter'
let g:NERDCreateDefaultMappings = 1
let mapleader = ","
"
"--Disabled Plugins--
"
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'html-xml-tag-matcher'
call vundle#end() "required
filetype plugin indent on "required
filetype plugin on "to ignore plugin indent changes
"
"-----------------
" S E T T I N G S 
"-----------------
"
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
set tabstop=4
set softtabstop=4 " makes the spaces feel like real tabs
set shiftwidth=4
"set noexpandtab
set expandtab "cause TAB characters to not be used in the file for compression, and for only spaces to be used
"
"-------------------------
" K E Y   M A P P I N G S 
"-------------------------
"
nnoremap <space> <C-D>
nnoremap <backspace> <C-U>
nnoremap 11 :w<enter>
nnoremap 22 :wq<enter>
nnoremap 33 :q<enter>
nnoremap 44 :q!<enter>
nnoremap ö )
nnoremap ä (
nnoremap Ö }
nnoremap Ä {
nnoremap m i<space><esc>
"
inoremap <leader>< <><esc>i
"iab mfg <cr><cr>Mit freundlichen Grüßen<cr><cr>Andreas Kamzol<esc> "use
"ultisnips instead
iab pdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
iab asciicat (>^.^<)
"
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>< <esc>`>a><esc>`<i<<esc>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
"search and replace selected text
"
"-------------------
" F U N C T I O N S 
"-------------------
"
so ~/.vim/functions/tagselection.vim
"so ~/.vim/functions/xmlprettyprint.vim

"
"---------
" K E Y S 
"---------
"gu = lowercase
"gU = uppercase
"g~ = toggle case
"
"---------
" H E L P 
"---------
"
"--Vundle--
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lin
"
"--UltiSnips
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
"
"--General--
"set expandtab "insert space characters whenever the tab key is pressed, if you want to enter a real tab character use Ctrl-V<Tab>, use :retab to change all the existing tab characters to match the current tab settings
