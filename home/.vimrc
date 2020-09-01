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
set backupcopy=no

" Autosave on buffer change or focus loss
"autocmd BufLeave,FocusLost * silent! w

" Settings for two-space tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2

" vim-polyglot
" must be set before vim-polyglot is initialized
" disable rspec syntax highlighting
let g:polyglot_disabled = ['rspec']

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' " package manager
Plugin 'sheerun/vim-polyglot' " multi-language syntax highlighting
Plugin 'megantiu/true.vim' " my personal colorscheme
Plugin 'lilydjwg/colorizer' " highlight color hex codes
Plugin 'vim-airline/vim-airline' " pretty airline status bar
Plugin 'airblade/vim-gitgutter' " show git changes in the gutter
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy file finding
Plugin 'scrooloose/nerdcommenter' " easily (un)comment blocks of text
Plugin 'scrooloose/nerdtree' " tree-based file browser
Plugin 'vim-syntastic/syntastic' " universal linter
Plugin 'thoughtbot/vim-rspec' " easily run my rspec tests within vim
Plugin 'tpope/vim-rails' " rails-related shortcuts and highlighting
Plugin 'tpope/vim-surround' " easily modify surrounding punctuation
Plugin 'tpope/vim-fugitive' " git interface: blame, diff, etc.
Plugin 'tpope/vim-endwise' " auto-close ruby ends and more
Plugin 'Townk/vim-autoclose' " auto-close parens, brackets, etc.
Plugin 'terryma/vim-multiple-cursors' " sublime-like multi-cursors
Plugin 'ervandew/supertab' " tab auto-complete
Plugin 'ngmy/vim-rubocop' " run rubocop within vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Styling
colorscheme true
set number

if (has("termguicolors"))
 set termguicolors
endif

" highlight ruby operators
let ruby_operators = 1
let ruby_pseudo_operators = 1

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

" Use the Silver Searcher for ctrlp
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" stop checking HTML files
let g:syntastic_html_checkers=['']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
