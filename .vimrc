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

Plug 'arcticicestudio/nord-vim'
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
Plug 'wakatime/vim-wakatime'
Plug 'sirver/ultisnips'
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-unimpaired'
Plug 'jgallen23/runcode.vim'
Plug 'ervandew/ag'
Plug 'moll/vim-node'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
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

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

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
