syntax enable
set t_Co=256 " Explicitly support 256-colored terminal
set encoding=utf-8

set autoread
set ignorecase        " case insensitive searching
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

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ksmithbaylor/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'othree/html5.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'Townk/vim-autoclose'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme Tomorrow-Night-Bright
set number
highlight LineNr      ctermbg=235
highlight LineNr      ctermfg=067

" Key mappings
noremap <Leader>e :Explore
noremap <Leader>t :tabfind<Space>
noremap <Leader>ins :PluginInstall<CR>
noremap <Leader>tn :tabnew<CR>
noremap <Leader>s :w<CR>
noremap <Leader>w :tab close
noremap <Leader>f :CtrlP<CR>
noremap <Leader>nt :NERDTree
noremap <Leader>ntc :NERDTreeClose
noremap <Leader>wh :split
noremap <Leader>wv :vsplit
noremap { <2j
noremap } >2j

" Rspec-Vim
noremap <Leader>spa :call RunAllSpecs()<CR>
noremap <Leader>sp :call RunCurrentSpecFile()<CR>
noremap <Leader>spn :call RunNearestSpec()<CR>

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
