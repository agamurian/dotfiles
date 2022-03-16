runtime! debian.vim
syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
"set mouse=a
set colorcolumn=100
set nocompatible
set cursorline


au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

filetype plugin indent on

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" Themes
Plug 'juanedi/predawn.vim'
Plug 'chriskempson/base16-vim',
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/everforest'
Plug 'sainnhe/edge'
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'

" Code completition
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
"Plug 'cakebaker/scss-syntax.vim'
Plug 'bhurlow/vim-parinfer'
Plug 'w0rp/ale'
"Plug 'posva/vim-vue'
"Plug 'leafgarland/typescript-vim'
"Plug 'neovim-lspconfig'

" Files and tools
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'

" Looks and IDE visual parts
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

"ctrlp
"cd vim && git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set switchbuf=usetab
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :tabm -1<CR>
nnoremap <silent> <A-Right> :tabm +1<CR>

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '⋮'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='base16-spacemacs'
"let g:airline_statusline_ontop=1
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_use_typescript = 1

nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

""groovy
"colorscheme gruvbox
"set background=dark

"sonny


"if has('termguicolors')
  "set termguicolors
"endif
"let g:everforest_background = 'medium'
"colorscheme everforest

"if has('termguicolors')
  "set termguicolors
"endif
"let g:everforest_background = 'hard'
"colorscheme everforest

"colorscheme base16-default-dark
"let base16colorspace=256  " Access colors present in 256 colorspace


 "Important!!
"if has('termguicolors')
  "set termguicolors
"endif
 "The configuration options should be placed before `colorscheme sonokai`.
"let g:sonokai_style = 'shusia'
"let g:sonokai_enable_italic = 1
"let g:sonokai_disable_italic_comment = 1
"colorscheme sonokai

"" Important!!
if has('termguicolors')
  set termguicolors
endif
"" The configuration options should be placed before `colorscheme edge`.
let g:edge_style = 'aura'
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1
colorscheme predawn

let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrv_winsize=25
let g:ctrlp_use_caching=0

let mapleader=" "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndoTreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>wincmd
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
nnoremap <S-k> :m-2<CR>
nnoremap <S-j> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gv
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <leader>z :Goyo<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
