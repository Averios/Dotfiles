set  t_Co=256
set laststatus=2
highlight LineNr ctermfg=white ctermbg=black
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'

" Autocomplete
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'lervag/vimtex'
Plug 'majutsushi/tagbar'

call plug#end()

filetype plugin indent on
filetype plugin on
let mapleader=","
set shiftwidth=4
set tabstop=4
set smarttab
set autoindent
set number

" Copy to clopboard shortcut
vnoremap <Leader>yy "+y

" Auto delete trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e


" Plugins options
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='jellybeans'
colorscheme molokai_dark

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" F8 to open tagbar
nmap <F8> :TagbarToggle<CR>
