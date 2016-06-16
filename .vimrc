syntax enable
set t_Co=256

set autoread

set tabstop=2
set shiftwidth=2
set softtabstop=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ksmithbaylor/tomorrow-theme', {'rtp': 'vim/'} " modified
Plugin 'othree/html5.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme Tomorrow-Night-Bright
set number

noremap <Leader>e :Explore
noremap <Leader>t :tabfind 
noremap <Leader>ins :PluginInstall
noremap <Leader>tn :tabnew
noremap <Leader>s :w
noremap <Leader>w :tab close

set statusline=%f
