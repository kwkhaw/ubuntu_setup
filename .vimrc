
" This must be first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory

call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()
call pathogen#incubate()

" change the mapleader from \ to ,
let mapleader=","

" Quickly eidt/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Store unwritten changes in hidden buffers instead of closing them.
set hidden

" Most basic settings
set nowrap 				" don't wrap lines
set tabstop=2 		" number of spaces for a tab
set shiftwidth=2 	" number of spaces to use for autoindenting
set expandtab "Insert spaces for a tab
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent 		" always set autoindenting on
set copyindent 		" copy the previous indentation on autoindenting
set number 				" always show line numbers
set shiftround 		" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch 		" set show matching parrenthesis
set ignorecase 		" ignore case when searching
set smartcase 		" ignore case if search pattern is all lowercase, case sensitive otherwise
set smarttab 			" insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch 			" highlight search terms
set incsearch 		" show search matches as you type

set history=1000 		" remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title 					" change the terminal's title
set visualbell 			" don't beep
set noerrorbells 		" don't beep

set nobackup
set noswapfile

filetype plugin indent on

autocmd BufRead,BufNewFile *.jade setlocal ft=jade " Must come before all other autocmd
autocmd filetype python set expandtab
autocmd filetype make setlocal noexpandtab

if &t_Co >= 256 || has("gui_running")
	colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
	" switch syntax highlighting on, when the terminal has colors
	syntax on
endif

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

autocmd filetype html,xml set listchars-=tab:>.

set pastetoggle=<F2>

color slate
