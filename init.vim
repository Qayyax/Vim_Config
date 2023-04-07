:set number
:set relativenumber
:set autoindent
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set nohlsearch
:set ruler
:set scrolloff=5
:set ignorecase
:set smartcase
:set background=dark


call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'ellisonleao/gruvbox.nvim' "gruvbox color scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomtom/tcomment_vim' "auto- complete

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-q> :q<CR> "quit vim with ctrl q
nnoremap <C-s> :w<CR> "write vim with ctrl w
nnoremap <C-/> :<C-u>call tcomment#Toggle()<CR> " comment with ctrl /
inoremap jk <Esc>



" Map ! key to insert HTML5 boilerplate with proper indentation
nnoremap ! :r ~/.config/nvim/snippets/html5boilerplate.txt<CR>

nmap <F8> :TagbarToggle<CR>

" Map Esc to exit terminal
tnoremap <Esc> <C-\><C-n>:q!<CR>

" Map Esc to capslock
imap <CapsLock> <Esc>
nmap <CapsLock> <Esc>

augroup TransparentBackground
    autocmd!
    autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
augroup END

:set completeopt-=preview " For No Previews

":colorscheme slate
:colorscheme gruvbox

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Enable autocompletion for HTML, CSS, and JavaScript
autocmd FileType html,css,javascript setlocal omnifunc=coc#complete

" Show signature help for JavaScript functions
autocmd FileType javascript nmap <leader>k :call CocAction('showSignatureHelp')<CR>

" ---- Notes on autocomplete ---
" To comment a single line, place the cursor on the line and type gcc.
" To comment a block of code, select the lines using visual mode and type gc.
" To uncomment a single line, place the cursor on the commented line and type gcu.
" To uncomment a block of code, select the commented lines using visual mode and type gcs.

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
