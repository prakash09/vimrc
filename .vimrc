" set nocompatible
filetype plugin on
filetype on
" Automatic reloading of .vimrc
 autocmd! bufwritepost .vimrc source %

:set laststatus=2

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

set pastetoggle=<F2>
map <F5> :source $MYVIMRC
map <F4> :%!python -m json.tool
set clipboard=unnamedplus


:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar


set noswapfile


" Mouse and backspace
" set mouse=a  " on OSX press ALT and click
" set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","



" bind Ctrl+<movement> keys to move aroClassNameund the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
 map <c-j> <c-w>j
 map <c-k> <c-w>k
 map <c-l> <c-w>l
 map <c-h> <c-w>h

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
 vnoremap < <gv  " better indentation
 vnoremap > >gv  " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
 autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
 au InsertLeave * match ExtraWhitespace /\s\+$/


"status line
:so ~/.vim/scripts/statusline.vim


" Showing line numbers and length
 set relativenumber  " show line numbers
 set tw=79   " width of document (used by gd)
 set nowrap  " don't automatically wrap on load
 set fo-=t   " don't automatically wrap text when typing
 set colorcolumn=80
 highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
 vmap Q gq
 nmap Q gqap


" Useful settings
 set history=700
 set undolevels=700


" Real programmers don't use TABs but spaces
 set tabstop=4
 set softtabstop=4
 set shiftwidth=4
 set shiftround
 set expandtab
 

" Make search case insensitive
 set hlsearch
 set incsearch
 set ignorecase
 set smartcase






if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/Documents/undo') == 0
    :silent !mkdir -p ~/Documents/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/Documents/undo//
  set undofile
endif


autocmd InsertEnter * :set invrelativenumber | :set number
autocmd InsertLeave * :set relativenumber

" :map <F9> :!sh run.sh %

syntax on
" colorscheme black_angus
" colorscheme vividchalk
colorscheme vividchalk

filetype plugin indent on
" map! jj <Esc> " map jj to Esc

set showcmd showmode fdm=indent noerrorbells
set nofoldenable "folds open by default
nnoremap <Space> za  " for toggling folds in vim


execute pathogen#infect()

" showing function arguments 
let g:jedi#show_call_signatures = "2"
set runtimepath^=~/.vim/bundle/ctrlp.vim

set guifont=Monospace\ 12

au Filetype cpp source ~/.vim/scripts/cpp.vim
au Filetype java source ~/.vim/scripts/cpp.vim
au Filetype python source ~/.vim/scripts/python.vim

" for opening jedi-vim's docstring window at the bottom of the screen
set splitbelow

" for swapping capslock and esc
:silent !~/.vim/esc_capslock_swap.sh off
au VimLeave * call system('~/.vim/esc_capslock_swap.sh on') 
" au VimLeave * call system('') 

" ctrl +a for copying whole file to clipboard
nmap <C-a> gg"+yG
" ctrl +c for copying the highlighted text to clipboard
vmap <C-c> "+y


set wildignore=*.o,*~,*.pyc


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" javascript syntax checker
let g:syntastic_javascript_checkers = ['jshint']

" indent guides
