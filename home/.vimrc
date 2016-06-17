syntax enable
set t_Co=256 " Explicitly support 256-colored terminal

set autoread

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set cursorline
set wrap

set nocompatible    " Diable vi-compatibility
filetype off        " required for vundle
set laststatus=2    " Always show the statusline
set encoding=utf-8

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
Plugin 'Lokaltog/vim-powerline'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'thoughtbot/vim-rspec'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme Tomorrow-Night-Bright
set number
highlight LineNr      ctermbg=235
highlight LineNr      ctermfg=069

let NERDTreeShowHidden=1

noremap <Leader>e :Explore
noremap <Leader>t :tabfind 
noremap <Leader>ins :PluginInstall<CR>
noremap <Leader>tn :tabnew<CR>
noremap <Leader>s :w<CR>
noremap <Leader>w :tab close
noremap <Leader>f :CtrlP<CR>
noremap <Leader>nt :NERDTree
noremap <Leader>ntc :NERDTreeClose
noremap <Leader>wh :split
noremap <Leader>wv :vsplit

" Rspec-Vim
let g:rspec_command = "bundle exec rspec {spec}"
noremap <Leader>a :call RunAllSpecs()<CR>
