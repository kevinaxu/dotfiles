set nocompatible
syntax on
filetype plugin indent on

" Set up runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'					" Vundle manages vundle, required. 
Plugin 'scrooloose/nerdcommenter'			" Nerdcommenter 
Plugin 'scrooloose/nerdtree'				" Nerdtree 
Plugin 'flazz/vim-colorschemes'				" Various vim-colorschemes 
Plugin 'tpope/vim-unimpaired'				" Pairs of handy bracket mappings 
Plugin 'fholgado/minibufexpl.vim'			" Mini Buffer explorer 
Plugin 'rbgrouleff/bclose.vim'				" Change bd function 

call vundle#end()					" End of Vundle plugin 

set nocompatible            " dump old fashioned vi support!
set modelines=0				" prevents some security exploits..?
set backspace=indent,eol,start	" allow backspacing over everything
set history=500				" Keep 500 lines of history
set ruler					" show curson position all the time
set showcmd					" display incomplete commands
set autoindent				" auto indent
set number					" line numbers	
set showmode				" show what mode you're in
set softtabstop=4			" soft tabs = 2 spaces
set shiftwidth=4
set mouse=a					" Enable use of mouse in console vim 
set tabstop=4				" tabs = 2 spaces
set hlsearch				" highlight search terms
set ignorecase				" case insensitive search
set showmatch				" show matching parentheses
set incsearch				" works to highlight search text
set nowrap					" Don't auto wrap text when vim starts

" set background=dark
" let g:solarized_termcolors=256
" color solarized				" set the colorscheme (ron, murphy, slate, torte, elflord)
let g:molokai_original=1 
color molokai

" Set abbreviations for commonly misspelled words 
iabbrev teh the
iabbrev adn and 

" Intuitive mappings
nnoremap ; : 
inoremap ii <Esc> 
inoremap II <Esc>	

" Change the leader to comma
let mapleader= ","
let g:mapleader = ","

" j and k move up and down display lines vs. real lines 
nnoremap j gj
nnoremap k gk


" Open a new vertical split and switch to it. 
" nnoremap <leader>w <C-w>v<C-w>l

" Quickly edit/refresh vimrc and zshrc files
" nnoremap <leader>evim :e ~/.vimrc<CR>
" nnoremap <leader>ezsh :e ~/.zshrc<CR>
" nnoremap <leader>sv :source ~/.vimrc<CR>


" Easier split navigation
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" Redraws screen and removes search highlighting
" nnoremap <silent> <C-l> :nohl<CR><C-l>

" Toggle spell check. 
nmap <silent> <leader>sp :set spell!<CR>
highlight clear SpellBad
highlight SpellBad cterm=underline

" Highlight background for text > 80 columns
" highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

"***************** PLUGIN CONFIG *********************************
" NERDTREE 
" Open NERDTree automatically on Vim startup if no files specified 
autocmd vimenter * if !argc() | NERDTree | endif		
" Close Vim if the only window open is NERDTree 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
map <C-n> :NERDTreeToggle<CR>

" Mini Buf Explorer
map <Leader>mbe :MBEToggle<cr> 

" Bclose.vim 
" Use fancy buffer closing that doesn't close the split
cnoremap <expr> bd (getcmdtype() == ':' ? 'Bclose' : 'bd')

" This is to pretty F7 to invoke Make
"function! Make() 
	"let curr_dir = expand('%:h')
	"if curr_dir == ''
		"let curr_dir = '.'
	"endif
	"echo curr_dir
	"execute 'lcd ' . curr_dir
	"execute 'make %:r'
	"execute 'lcd -'
"endfunction 
"nnoremap <F7> :update<CR>:call Make()<CR>
