set encoding=utf-8
set termguicolors!
syntax on

set number relativenumber

" invisible chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:.

" swap files far away from the project folders
set directory=$HOME/.vim/swapfiles//

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

" autocomplete
if has('nvim')
  Plug 'neoclide/coc.nvim'
else
  Plug 'valloric/youcompleteme', { 'do': './install.py --tern-completer' }
endif

Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim'
Plug 'bling/vim-airline'
Plug 'dart-lang/dart-vim-plugin'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/ag'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'jgallen23/runcode.vim'
Plug 'jpo/vim-railscasts-theme'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lepture/vim-velocity'
Plug 'lilydjwg/colorizer'
Plug 'mattn/emmet-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mfukar/robotframework-vim'
Plug 'moll/vim-node'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'thosakwe/vim-flutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline-themes'
Plug 'wakatime/vim-wakatime'

call plug#end()

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set wildignore+=*/node_modules/*,*/dist/*,*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\node_modules\\*,*\\dist\\*,*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

nmap <C-P> :FZF<CR>

" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
let g:deoplete#enable_at_startup = 1

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

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let JSHintUpdateWriteOnly=1

let g:open_url_browser="xdg-open"

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

set wildmenu
set wildmode=longest:full,full

colorscheme nord

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

if !has('nvim')
  " Salva quando fecha e carrega os trechos colapsados de cada arquivo quando
  " abre
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent loadview 
endif

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
