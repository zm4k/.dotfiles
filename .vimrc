" P L U G I N S ////////////////////////////////////////////////////////////////
"--Vundle.vim--
set nocompatible "required
filetype off "required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path for Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' "let Vundle manage Vundle, required
set shell=/bin/bash "needed because I'm using the fish shell
"
"--UltiSnips--
Plugin 'SirVer/ultisnips' "UltiSnip engine
Plugin 'honza/vim-snippets' "handles the actual snippets
set rtp+=~/.vim/bundle/ultisnips/
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetsDir="~/.vim/bundle/ultisnips/" "user snippets
let g:UltiSnipsSnippetDirectories="~/.vim/bundle/vim-snippets/UltiSnips/"
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
"colorscheme jellybeans
"colorscheme distinguished
colorscheme delek
set encoding=utf-8
set ff=unix "set ff=dos
set wildmenu
set showcmd
set smartcase
set autoindent "set paste to disable
set nostartofline
set ruler
set visualbell
set showmatch
"set cursorline
set scrolloff=40 "number of context lines above and below the cursor
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set matchpairs=(:),{:},[:],<:>
set list "display all tabs and ends of lines
"set tabstop=4
"set softtabstop=4 "makes the spaces feel like real tabs
set shiftwidth=4
set expandtab "cause TAB characters to not be used "set noexpandtab
set hidden "allow hidden buffers, no need for adding a !
set pastetoggle=<F2> "toggles paste mode
set textwidth=80
set lazyredraw
set number 
"set relativenumber
"
" S E A R C H ////////////////////////////////////////////////////////////////
set hlsearch
set ignorecase
set incsearch
highlight clear Search
highlight Search ctermfg=Yellow ctermbg=Black cterm=bold
highlight IncSearch ctermfg=White ctermbg=Red cterm=bold
"
" K E Y   M A P P I N G S //////////////////////////////////////////////////////
nnoremap <space> <C-D>
nnoremap <backspace> <C-U>
nnoremap <silent> <C-l> :nohlsearch <bar> redraw<CR>
nnoremap 11 :w<enter>
nnoremap 22 :wq<enter>
nnoremap 33 :q<enter>
nnoremap 44 :q!<enter>
nnoremap 55 ::%!xmllint --format %<enter>
nnoremap ä (
nnoremap ü )
nnoremap Ä {
nnoremap Ü }
nnoremap Ö /
nnoremap - :
nnoremap m i<space><esc>
nnoremap z y
nnoremap y z
"nnoremap ß <C-O>
"
"inoremap < <><esc>i
"inoremap ( ()<esc>i
"inoremap { {}<esc>i
"inoremap [ []<esc>i
iab pdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr><cr>
iab idate <c-r>=strftime("%d/%m/%y %H:%M:%S")
iab asciicat (>^.^<)
"
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>< <esc>`>a><esc>`<i<<esc>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
vnoremap <space> <C-D>
vnoremap <backspace> <C-U>
vnoremap z y
vnoremap y z
