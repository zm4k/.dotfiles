" P L U G I N S ////////////////////////////////////////////////////////////////
"--Vundle--
set nocompatible "required
filetype off "required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path for Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' "let Vundle manage Vundle, required
"
"--UltiSnips--
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
Plugin 'scrooloose/nerdcommenter'
let g:NERDCreateDefaultMappings = 1
let mapleader = ","
call vundle#end() "required
filetype plugin indent on "required
filetype plugin on "to ignore plugin indent changes
"
" G E N E R A L ////////////////////////////////////////////////////////////////
syntax enable
colorscheme delek
set encoding=utf-8
set ff=unix "set ff=dos
set wildmenu
set showcmd
set hlsearch
set ignorecase
set incsearch
set smartcase
set autoindent "set paste to disable
set nostartofline
set ruler
set visualbell
set showmatch
set cursorline
set scrolloff=40 "number of context lines above and below the cursor
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set list "display all tabs and ends of lines
set tabstop=4
set softtabstop=4 "makes the spaces feel like real tabs
set shiftwidth=4
set expandtab "cause TAB characters to not be used "set noexpandtab
set hidden "allow hidden buffers, no need for adding a !
set pastetoggle=<F2> "toggles paste mode
set textwidth=80
set lazyredraw
set number "set relativenumber
"
" K E Y   M A P P I N G S //////////////////////////////////////////////////////
nnoremap <space> <C-D>
nnoremap <backspace> <C-U>
nnoremap 11 :w<enter>
nnoremap 22 :wq<enter>
nnoremap 33 :q<enter>
nnoremap 44 :q!<enter>
nnoremap 55 ::%!xmllint --format %<enter>
nnoremap ö (
nnoremap ä )
nnoremap ü /
nnoremap Ö }
nnoremap Ä {
nnoremap m i<space><esc>
nnoremap ß <C-O> "jump to previous line
"
inoremap <leader>< <><esc>i
inoremap < <><esc>i
inoremap ( ()<esc>i
iab pdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr><cr>
iab asciicat (>^.^<)
"
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>< <esc>`>a><esc>`<i<<esc>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left> 
"
" F U N C T I O N S ////////////////////////////////////////////////////////////
"so ~/.vim/functions/tagselection.vim
"so ~/.vim/functions/xmlprettyprint.vim
"
" A U T O C M D ////////////////////////////////////////////////////////////////
"augroup VCenterCursor "disable: au! VCenterCursor
  "au!
  "au BufEnter,WinEnter,WinNew,VimResized *,*.*
        "\ let &scrolloff=winheight(win_getid())/2
"augroup END

"if has("autocmd")
  "autocmd bufwritepost .vimrc source $MYVIMRC
"endif
"
" K E Y S" /////////////////////////////////////////////////////////////////////
"gu = lowercase
"gU = uppercase
"g~ = toggle case
"gggqG = reformat file
"
" H E L P //////////////////////////////////////////////////////////////////////
"--Vundle--
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; 
"                     append `!` to auto-approve removal
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
"set expandtab "insert space characters whenever the tab key is pressed, if you
"want to enter a real tab character use Ctrl-V<Tab>, use :retab to change all
"the existing tab characters to match the current tab settings
"
"deleted
"let g:solarized_termcolors=256
"set background=dark
"colorscheme grb256
"colorscheme solarized
"
"--Disabled Plugins--
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'html-xml-tag-matcher'
"set showbreak=++++
"set scrolloff=0 "line follows always the cursor
"set nowrap
"set nolinebreak
