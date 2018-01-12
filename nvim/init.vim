call plug#begin()
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
call plug#end()


set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
syntax enable

""" four-space tab indent
set tabstop=4
set smartindent
set shiftwidth=4
set expandtab

""" disable mouse
set mouse=

" Don't use Ex mode, use Q for formatting
map Q gq

""" Prevent lag when hitting escape
set ttimeoutlen=0
set timeoutlen=1000
au InsertEnter * set timeout
au InsertLeave * set notimeout

""" jump to last known cursor position
if has("autocmd")
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
endif

set laststatus=2
set encoding=utf-8

""" Auto-insert char
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i

""" airline configuration
let g:airline_powerline_fonts=1
let g:airline_section_x = '%{&filetype}'
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline_skip_empty_sections=1
let g:airline_theme= 'luna'

""" set bufferline in statusline
let g:bufferline_echo = 0
autocmd VimEnter *
    \ let &statusline='%{bufferline#refresh_status()}'
        \ .bufferline#get_status_string()

""" active deoplete
let g:deoplete#enable_at_startup = 1
