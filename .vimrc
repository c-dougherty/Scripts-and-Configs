set nocompatible    " not compatible with Vi

" Set backup unless the system already creates backup files.
if has("vms")
    set nobackup
else
    set backup
endif

" Switch syntax highlighting on, when the terminal has colors.
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set background=dark
endif

if has("autocmd")
   filetype plugin indent on
   
   " Jump to last position when re-opening file
   au bufreadpost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
else
    set autoindent
endif

set tabstop=4
set expandtab
set shiftwidth=4

set number
set history=50      " keep 50 lines of command line history
set ruler
set showcmd         " display incomplete commands
set incsearch       " do incremental searching; display matches as you type
set showmatch       " show matching brackets
