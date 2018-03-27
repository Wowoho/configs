" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set nobomb
set hls
set nocompatible
set wrap
set expandtab
set cindent
set number
set nobackup
set softtabstop=4
set shiftwidth=4
set tabstop=4
set backspace=eol,indent,start
set guifont=Consolas:h10
nnoremap <silent> <F3> :Grep<CR>
nnoremap <silent> <F6> :A<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nmap wx <C-w>x
nmap <F7> :vsp %<.in <CR>
nmap <F12> :!python <CR>
autocmd FileType c,cpp nmap <F8> <ESC>:w <CR><ESC>:!g++ % -std=c++11 -o %< <CR>
" autocmd FileType c,cpp nmap <F9> <ESC>:w <CR><ESC> :!%< <%<.in <CR>
autocmd FileType c,cpp nmap <F9> <ESC>:w <CR><ESC> :!%< <CR>
autocmd FileType java nmap <F8> <ESC>:w <CR><ESC>:!javac %<.java <CR>
autocmd FileType java nmap <F9> <ESC>:w <CR><ESC> :!java %< <%<.in <CR>
autocmd FileType java nmap <F10> <ESC>:w <CR><ESC> :!java %:r <CR>
autocmd FileType python nmap <F10> <ESC>:w <CR><ESC> :!python % <CR>
colorscheme desert

