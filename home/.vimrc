syntax enable       " Gimme the pretty colors
set t_Co=256        " Explicitly support 256-colored terminal
set encoding=utf-8  " Always use utf-8

let mapleader = ";" " Set leader key to ;

" Store temporary files in ~/.vim/tmp
" Trailing slash in the path stores the directory in the filename
set directory=$HOME/.vim/tmp//
set backupdir=$HOME/.vim/tmp//
set undodir=$HOME/.vim/tmp//

set autoread        " Reload files when changed
set ignorecase      " case insensitive searching
set expandtab       " Converts tabs to spaces
set autoindent      " Copy indentation from the previous line
set cursorline      " Highlight the line where the cursor is
set wrap            " Wrap long lines
set nocompatible    " Diable vi-compatibility
filetype off        " required for vundle
set laststatus=2    " Always show the statusline
set colorcolumn=80  " Show a vertical line at 80 characters
set backspace=2     " Lets the backspace key behave normally

" Autosave on buffer change or focus loss
autocmd BufLeave,FocusLost * silent! w

" Settings for two-space tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2

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
Plugin 'vim-syntastic/syntastic'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'Townk/vim-autoclose'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-markdown'
Plugin 'ervandew/supertab'
Plugin 'ngmy/vim-rubocop'
Plugin 'digitaltoad/vim-pug'
Plugin 'joukevandermaas/vim-ember-hbs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Styling
colorscheme Tomorrow-Night-Bright
set number
" Set left gutter to dark grey, line numbers to light blue
highlight LineNr ctermbg=235
highlight LineNr ctermfg=067

" Key mappings
noremap <Leader>t :tabfind<Space>
noremap <Leader>ins :PluginInstall<CR>
noremap <Leader>tn :tabnew<CR>
noremap <Leader>w :w<CR>
noremap <Leader>cl :tab close
noremap <Leader>f :CtrlP<CR>
noremap <Leader>tr :NERDTreeToggle<CR>
noremap <Leader>wh :split<CR>
noremap <Leader>wv :vsplit<CR>
noremap <Leader>r :edit<CR>
noremap <Leader>r! :edit<CR>

" keep selected text selected when fixing indentation
vnoremap < <gv
vnoremap > >gv

" Rspec-Vim
noremap <Leader>spa :w <bar> :call RunAllSpecs()<CR>
noremap <Leader>sp :w <bar> :call RunCurrentSpecFile()<CR>
noremap <Leader>spn :w <bar> :call RunNearestSpec()<CR>

" airline config
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols for airline
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

" vim-rubocop
let g:vimrubocop_config = '~/Code/callrail/.rubocop.yml'

" ctrlp exclude node_modules dir
let g:ctrlp_custom_ignore = 'node_modules\|vendor\|git'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
