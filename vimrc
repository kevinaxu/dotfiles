set nocompatible
syntax on
filetype plugin indent on

" Set up runtime path to include Vundle and initialize
" Make sure you install vundle plugins by running :PluginInstall
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'				" Vundle manages vundle, required. 
Plugin 'scrooloose/nerdcommenter'			" Nerdcommenter 
Plugin 'tpope/vim-fugitive'				    " Git wrapper for vim 
Plugin 'scrooloose/nerdtree'				" Nerdtree                      
Plugin 'BurntSushi/ripgrep'                 " grep alternative
Plugin 'junegunn/fzf'                       " fuzzy finder
Plugin 'junegunn/fzf.vim'                   " fuzzy finder vim bindings

Plugin 'altercation/vim-colors-solarized'	" Solarized colorscheme for vim 
Plugin 'junegunn/seoul256.vim'              " vim color scheme

Plugin 'fholgado/minibufexpl.vim'			" Mini Buffer explorer 
Plugin 'rbgrouleff/bclose.vim'				" Change bd function          
Plugin 'tpope/vim-surround'                 " Surround.vim

" Removed plugins
"Plugin 'scrooloose/syntastic'               " Syntax checking for vim 
"Plugin 'ctrlpvim/ctrlp.vim'					" Fuzzy file finder 
"Plugin 'vim-airline/vim-airline'            " status/tabline 
"Plugin 'tpope/vim-unimpaired'				" Pairs of handy bracket mappings 
"Plugin 'derekwyatt/vim-scala'              " scala plugins 

call vundle#end()					" End of Vundle plugin 

"set nocompatible            " dump old fashioned vi support! already set
set modelines=0				" prevents some security exploits..?
set ruler					" show curson position all the time
set showcmd					" display incomplete commands
set autoindent				" auto indent
set number					" line numbers	
set showmode				" show what mode you're in
set mouse=a					" Enable use of mouse in console vim 

" tabs and spaces 
set expandtab
set tabstop=4				" tabs = 4 spaces 
set softtabstop=4			" soft tabs = 2 spaces
set shiftwidth=4

set incsearch				" incremental search 
set hlsearch				" highlight search terms
set ignorecase				" case insensitive search
set showmatch				" show matching parentheses
set incsearch				" works to highlight search text
set nowrap					" Don't auto wrap text when vim starts
set visualbell t_vb=		" Turn off flashing error screen 

" color solarized				" set the colorscheme (ron, murphy, slate, torte, elflord)
" Set the font as Menlo 16 in the preferences 
set background=dark 
let g:solarized_termcolors=256
colorscheme solarized 

"let g:seoul256_background = 234
"colo seoul256

" Set abbreviations for commonly misspelled words 
iabbrev teh the
iabbrev adn and 
iabbrev campaing campaign

" insert --> normal mode
nnoremap ; :
inoremap jk <Esc>
inoremap JK <Esc>

" Change the leader to comma
let mapleader= ","
let g:mapleader = ","

" j and k move up and down display lines vs. real lines 
nnoremap j gj
nnoremap k gk

" Change the characters displayed after using 'set list'
set listchars=tab:▸\ ,eol:¬

" Easier split navigation
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" highlight trailing whitespace in red
match ErrorMsg '\s\+$'

" Save a file that you don't have write permissions without having to use 'sudo vim'
cmap w!! w !sudo tee %

" Phan client stuff below:

" Standalone vim snippet for php and html files.
" Add this to your home directory's .vimrc
"
" May conflict with other syntax checking plugins.
" Need to use absolute path to phan_client, or put it in your path (E.g. $HOME/bin/phan_client)
" This is based off of a snippet mentioned on http://vim.wikia.com/wiki/Runtime_syntax_check_for_php
"au FileType php,html setlocal makeprg='/usr/local/Cellar/phan/0.10.0/phan_client'
"au FileType php,html setlocal errorformat=%m\ in\ %f\ on\ line\ %l,%-GErrors\ parsing\ %f,%-G

"au! BufWritePost  *.php,*.html    call PHPsynCHK()

"function! PHPsynCHK()
"  let winnum =winnr() " get current window number
"  silent make -l %
"  cw " open the error window if it contains an error. Don't limit the number of lines.
"  " return to the window with cursor set on the line of the first error (if any)
"  execute winnum . "wincmd w"
"  :redraw!
"endfunction

" Toggle spell check. 
"nmap <silent> <leader>sp :set spell!<CR>
"highlight clear SpellBad
"highlight SpellBad cterm=underline

" Open a new vertical split and switch to it. 
" nnoremap <leader>w <C-w>v<C-w>l

" Redraws screen and removes search highlighting
" nnoremap <silent> <C-l> :nohl<CR><C-l>

"***************** PLUGIN CONFIG *********************************

" Modify statusline in vim airline 
"let g:airline_section_c=airline#section#create(['%F'])

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Show the buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

" NERDTREE 
" Open NERDTree automatically on Vim startup if no files specified 
autocmd vimenter * if !argc() | NERDTree | endif		
" Close Vim if the only window open is NERDTree 
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
map <C-n> :NERDTreeToggle<CR>

" Mini Buf Explorer
map <Leader>mbe :MBEToggle<cr> 

" Bclose.vim 
" Use fancy buffer closing that doesn't close the split
cnoremap <expr> bd (getcmdtype() == ':' ? 'Bclose' : 'bd')

" fzf.vim
nnoremap <C-P> :Files<Enter>
