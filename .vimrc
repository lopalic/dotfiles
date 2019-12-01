" setup Vim-Plug
let vimplug_exists=expand('~/.vim/autoload/plug.vim')

let g:vim_bootstrap_langs = "ruby"
let g:vim_bootstrap_editor = "vim"                              " nvim or vim

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" install plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-rails'
Plug 'sheerun/vim-polyglot'
Plug 'chriskempson/base16-vim'
Plug 'mopp/mopkai.vim'
Plug 'rainglow/vim'
call plug#end()

" basic setup
syntax on
filetype plugin indent on

" line numbering, search highligh
set number
set hlsearch

" replace tabs with 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" minumum line count above and below cursor
set scrolloff=5

" 80 char column line
set colorcolumn=80

" highlight cursor line
set cursorline

" set tabcomplete preview
set wildmenu

" autocomplete/find file anywhere
set path+=**

" set colorcheme
colorscheme mopkai

"set Airline colorcheme
let g:airline_theme = 'powerlineish'

" set tags file
set tags=./tags;

" ignore case when searching
set ignorecase

" search behaves like modern browser search(go to results as you type)
set incsearch

" automatically refresh content of editor window upon change on disk(git)
set autoread
au CursorHold * checktime

" deal with swp files
set nobackup
set noswapfile
