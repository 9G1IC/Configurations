" Set runtime path
" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" " plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
" " Git plugin not hosted on GitHub
 "Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
 Plugin 'bling/vim-airline'
 "Plugin 'bronson/vim-trailing-whitespace'
 Plugin 'osyo-manga/vim-over'
 Plugin 'godlygeek/tabular'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'joonty/vdebug'
 Plugin 'tpope/vim-surround'
 Plugin 'Yggdroot/indentLine'
 Plugin 'indentpython.vim--nianyang'
 Plugin 'indentpython.vim'
 Plugin 'pythoncomplete'
 Plugin 'ervandew/eclim'
 Plugin 'ivanov/vim-ipython'
 Plugin 'tpope/vim-fugitive'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-unimpaired'

  let g:airline#extensions#eclim#enabled = 1

 " " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:

 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
 " :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to
 " auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line






set number
syntax on
autocmd! bufwritepost .vimrc source %
" Latex - Suite Config
"REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
" IMPORTANT: grep will sometimes skip displaying the file name if you
"search in a single file. This will confuse Latex-Suite. Set your grep
"program to always generate a file-name.
set grepprg=grep\ -nH\ S*

"OPTIONAL: This enables automatic indentation as I type.
filetype indent on

"OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to"'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"The following changes the default filetype back to 'tex'"
let g:tex_flavor='latex'
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -

"PLUG IN
execute pathogen#infect()

"airline
set t_Co=256
set laststatus=2
set encoding=utf-8
set ttimeoutlen=50
let g:airline_left_sep='>'
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_right_sep='<'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
let g:airline#extensions#eclim#enabled = 1

" MY Configs
set number
syntax on
set cindent
set autoindent
set filetype=python
"set foldmethod=indent
set foldlevel=99
" set smartindent
set shiftwidth=4
set ts=4
set cinwords=if,elif,else,for,while,try,except,finally,def,class
set list lcs=tab:\|]
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'
" set spell
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1

" Mappings
let mapleader=" "
nnoremap <Leader>g Go
nnoremap <Leader>p  :source ~/.vimrc <cr> :PluginInstall <cr>
nnoremap <Leader>fo   {jv}kzfj^[
    set grepprg=grep\ -nH\ $*
