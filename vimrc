set nocompatible
syntax on
filetype plugin indent on

color elflord				" set the colorscheme (ron, murphy, slate, torte) 
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
set tabstop=4				" tabs = 2 spaces
set hlsearch				" highlight search terms
set ignorecase				" case insensitive search
set showmatch				" show matching parentheses
set incsearch				" works to highlight search text
" set cursorline

" Set abbreviations for commonly misspelled words 
ab teh the
ab adn and 

" Intuitive mappings
nmap ; : 
inoremap ii <Esc> 
inoremap II <Esc>	

" Change the leader to comma
let mapleader= ","
let g:mapleader = ","

" Quicly edit/reload vimrc and zshrc file
nmap <silent> <leader>evim :e ~/.vimrc<CR>
nmap <silent> <leader>ezsh :e ~/.zshrc<CR>

" j and k move up and down display lines vs. real lines 
nnoremap j gj
nnoremap k gk

" Open a new vertical split and switch to it. 
nnoremap <leader>w <C-w>v<C-w>l

" Easier split navigation
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" Easier buffer navigation 
noremap <leader>f :bn<CR>
noremap <leader>a :bp<CR>

" This is to pretty F7 to invoke Make
function! Make() 
	let curr_dir = expand('%:h')
	if curr_dir == ''
		let curr_dir = '.'
	endif
	echo curr_dir
	execute 'lcd ' . curr_dir
	execute 'make %:r'
	execute 'lcd -'
endfunction 
nnoremap <F7> :update<CR>:call Make()<CR>

" Redraws screen and removes search highlighting
" nnoremap <silent> <C-l> :nohl<CR><C-l>

" Toggle spell check. 
nmap <silent> <leader>s :set spell!<CR>
highlight clear SpellBad
highlight SpellBad cterm=underline

" Map BufExplorer to F3
imap <F3> ii:BufExplorer<CR>
map <F3> :BufExplorer<CR>

" Highlight background for text > 80 columns
highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Map NERDTree to F4
"imap <F4> ii:NERDTreeToggle<CR>
"map <F4> :NERDTreeToggle<CR>
imap <leader>n ii:NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>

