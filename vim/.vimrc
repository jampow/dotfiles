au BufNewFile,BufRead *.vm,*.html,*.htm,*.tpl set ft=velocity
set number
"set tabstop=4
"set shiftwidth=4
"set linespace=0

" invisible chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" gvim config
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

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

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

let g:open_url_browser="xdg-open"

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

colorscheme dracula
