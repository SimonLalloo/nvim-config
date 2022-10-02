" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Autocomplete (Intellisense)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Colorizer (show colors)
    Plug 'norcalli/nvim-colorizer.lua'
    " Color parentheses
    Plug 'junegunn/rainbow_parentheses.vim'
    " Comment sections
    Plug 'tpope/vim-commentary'
    " Better search
    Plug 'justinmk/vim-sneak' 
    " Better f and t navigation
    Plug 'unblevable/quick-scope'

    " Themes
    Plug 'joshdick/onedark.vim'    
    " Airline bar 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()
