" My vim config
" First setup 30 Aug 2022



let mapleader=" "

" Add other files with:
" source $HOME/.config/nvim/...

" Add Extenstions
" Add link
" run :source %; run :PlugInstall
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/joshdick/onedark.vim' " the theme

call plug#end()


" Use system clipboard
set clipboard+=unnamedplus


" --- File types ---
" Set file type
autocmd BufRead,BufNewFile *.tex set filetype=tex


" --- Spelling & editing ---
" Set spellcheck language
"autocmd FileType tex,latex,markdown setlocal spell spelllang=en_us

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" auto center (vertical) when entering insert mode
"autocmd InsertEnter * norm zz


" ----- Keybindings -----
" Enable/disable autocomments
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>

" Enable spell check
"map <leader>S :setlocal spell! spelllang=en_us<CR>

" Syntax highlighting
syntax on
map <leader>h :syntax off
map <leader>H :syntax on

" Improved search & replace
nnoremap S :%s//gcI<Left><Left><Left><Left>

" Tab completion (for : commands)
set wildmode=longest,list,full

" NERDTree
"nnoremap <leader>T :NERDTreeF
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>




" ----- General look and feel -----


" --- Theme ---
let g:airline_theme='onedark'
colorscheme onedark


" --- Lines ---
" Show line numbers
set number
" Wrap line
"set wrap
" Break lines at word (requires Wrap lines)
set linebreak
" Wrap-broken line prefix
set showbreak=+++
" Line wrap (number of cols)
set textwidth=100
" Highlight matching brace
set showmatch
" Use visual bell (no beeping)
set visualbell


" --- Search ---
" Highlight all search results
" set hlsearch
" Enable smart-case search
set smartcase
" Always case-insensitive
set ignorecase
" Searches for strings incrementally
set incsearch


" --- Indent (Tab) ---
" Auto-indent new lines
set autoindent
" Number of auto-indent spaces
set shiftwidth=4
" Enable smart-indent
set smartindent
" Enable smart-tabs
set smarttab
" Number of spaces per Tab
set softtabstop=4


" --- Cursor ---
" Highlight cursor position vertical and horizontal
"set cursorline
"Highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b
"set cursorcolumn
"Highlight CursorColumn ctermbg=Yellow cterm=bold guibg=#2b2b2b
"-Highlight colors not working (may require more terminal settings first)


" --- Special ---
" Show row and column ruler information
set ruler

" Mouse enable
set mouse=a

" Colors
set termguicolors
" colorscheme [schemename]

" Number of undo levels
set undolevels=1000
" Backspace behaviour
set backspace=indent,eol,start

" --- Splitting ---
set splitbelow splitright


