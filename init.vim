call plug#begin('~/.config/nvim')
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'natebosch/vim-lsc-dart'
Plug 'natebosch/vim-lsc'
Plug 'dart-lang/dart-vim-plugin'
Plug 'vim-ruby/vim-ruby'
Plug 'veonim/veonim'
call plug#end()

syntax on
filetype on
filetype plugin on
filetype indent on

set number
set incsearch
set hlsearch
set ruler
set showcmd
set hidden
set autoindent
set expandtab
set smartindent
set nowrap
set wildmenu
set laststatus=2
set updatetime=100
set background=dark
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

map <C-n> :NERDTreeToggle<CR>
map <C-e> :tabNext<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

"lsc
let g:lsc_auto_map = v:true

"rainbow
let g:rainbow_active = 1

"gitgutter
let g:gitgutter_max_signs = 500  " default value

"suntastic
let g:syntastic_tex_checkers = ['lacheck', 'text/language_check']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
