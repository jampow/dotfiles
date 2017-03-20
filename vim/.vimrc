au BufNewFile,BufRead *.vm,*.html,*.htm,*.tpl set ft=velocity
set number

" invisible chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" column markers
set cc=80,120

" gvim config
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" fugitive
set diffopt+=vertical

" VimPlug - Plugins
call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'jpo/vim-railscasts-theme'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'lepture/vim-velocity'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'crusoexia/vim-dracula'
Plug 'maksimr/vim-jsbeautify'
Plug 'wakatime/vim-wakatime'
Plug 'sirver/ultisnips'
Plug 'lilydjwg/colorizer'
Plug 'henrik/vim-open-url'
Plug 'wookiehangover/jshint.vim'
Plug 'grep.vim'
Plug 'tpope/vim-unimpaired'
Plug 'jgallen23/runcode.vim'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dracula'
let g:Powerline_symbols = 'fancy'

let JSHintUpdateWriteOnly=1

let g:open_url_browser="xdg-open"

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

colorscheme dracula

" Salva quando fecha e carrega os trechos colapsados de cada arquivo quando
" abre
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
