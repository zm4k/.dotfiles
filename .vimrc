" P L U G I N S ////////////////////////////////////////////////////////////////
"--Vundle.vim--
set nocompatible "required
filetype off "required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path for Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' "let Vundle manage Vundle, required
set shell=/bin/bash "needed because I'm using the fish shell
"to install new plugins run :PluginInstall
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
"
"--Emmet-Vim--
Plugin 'mattn/emmet-vim' "<c-y>, to expand the abbreviation
"
call vundle#end() "required
filetype plugin indent on "required
filetype plugin on "to ignore plugin indent changes
"
"--Vim-Javascript--
Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"
"--Fugitive--
Plugin 'tpope/vim-fugitive'
"
"--Insert or delete brackets, parens, quotes in pair--
Plugin 'jiangmiao/auto-pairs'
"
" G E N E R A L ////////////////////////////////////////////////////////////////
syntax enable
"colorscheme delek
"colorscheme jellybeans
"colorscheme distinguished
"colorscheme zellner
"colorscheme badwolf
colorscheme goodwolf
set encoding=utf-8
set ff=unix "set ff=dos
set wildmenu
set showcmd
set smartcase
set autoindent "set paste to disable
"set autoread
set nostartofline
set ruler
set visualbell
set showmatch
"set cursorline
set scrolloff=40 "number of context lines above and below the cursor
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set matchpairs=(:),{:},[:],<:>
set list "display all tabs and ends of lines
set tabstop=8
"set softtabstop=8 "makes the spaces feel like real tabs
set shiftwidth=8
"set expandtab "cause TAB characters to not be used "set noexpandtab
set hidden "allow hidden buffers, no need for adding a !
set pastetoggle=<F2> "toggles paste mode
set textwidth=80
set lazyredraw
set number
"
highlight colorcolumn ctermfg=fg ctermbg=bg cterm=bold
set colorcolumn=82
"
" S E A R C H //////////////////////////////////////////////////////////////////
set hlsearch
set ignorecase
set incsearch
highlight clear Search
highlight Search ctermfg=Yellow ctermbg=Black cterm=bold
highlight IncSearch ctermfg=White ctermbg=Red cterm=bold
"
" K E Y   M A P P I N G S /////////////////////////////////////////////////////
nnoremap <space> <C-D>
nnoremap <backspace> <C-U>
nnoremap <silent> <C-l> :nohlsearch <bar> redraw<CR>
nnoremap 11 :w<enter>
nnoremap 22 :wq<enter>
nnoremap 33 :q<enter>
nnoremap 44 :q!<enter>
"nnoremap 55 ::%!xmllint --format %<enter>
nnoremap ä (
nnoremap ö /
nnoremap ü )
nnoremap Ä {
nnoremap Ü }
nnoremap ö /
nnoremap - :
nnoremap m i<space><esc>
nnoremap z y
nnoremap y z
nnoremap _ /
nnoremap ff :w<enter>
"nnoremap ß <C-O>
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <C-J> :bnext<CR>
nnoremap <C-K> :bprev<CR>

nnoremap <silent> <leader>e4 :e $MYVIMRC<CR>
nnoremap <silent> <leader>s4 :source $MYVIMRC<CR>
"
nnoremap <silent> <leader>e4 :e $MYVIMRC<CR>
nnoremap <silent> <leader>s4 :source $MYVIMRC<CR>
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
vnoremap _ /
"
command! Thtml :%!tidy -config ~/.tidy -q 
command! Whtml :%!tidy -config ~/.tidy -q --wrap 0
command! Nhtml :%!tidy -config ~/.tidy -q --wrap 0 --indent 0
"
" F I L E   S P E C I F I C ////////////////////////////////////////////////////
if has("autocmd")
  "autocmd BufRead,BufNewFile ~/git/coursera-bootstrap/* setlocal sw=3 nowrap
  autocmd FileType html setlocal shiftwidth=2 nowrap
  autocmd FileType css setlocal shiftwidth=2 nowrap
  autocmd FileType less setlocal shiftwidth=2 nowrap
  autocmd FileType scss setlocal shiftwidth=2 nowrap
  "autocmd FileType c setlocal shiftwidth=2
endif
