set encoding=UTF-8
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The NERDTree
Plugin 'scrooloose/nerdtree'

" NERDTree git plugin - show git file status
Plugin 'Xuyuanp/nerdtree-git-plugin'

" VimDevIcons -> https://github.com/ryanoasis/nerd-fonts#option-3-install-script
Plugin 'ryanoasis/vim-devicons'

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" Vue highlight
Plugin 'posva/vim-vue'

" PHP highlight
Plugin 'StanAngeloff/php.vim'

" Docker highlight
Plugin 'ekalinin/Dockerfile.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" NERTRee
autocmd vimenter * NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Fuzzy finder
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set backupcopy=yes

colorscheme desert

" dont use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" really, just dont
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
"
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
