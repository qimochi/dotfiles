"~/.vimrc
syntax on
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'dylanaraps/wal.vim'
Plug 'fehawen/sl.vim'
Plug 'fehawen/sc.vim'
Plug 'sheerun/vim-polyglot'
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

colorscheme tokyonight
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 0

set autoindent
set autoread
set backspace=indent,eol,start
set complete-=i
set modeline
set mouse=a
set number
set ruler
set wildmenu

if !&scrolloff
	  set scrolloff=1
endif
if !&sidescrolloff
	 set sidescrolloff=5
    endif
set display+=lastline

if &history < 1000
      set history=1000
endif
