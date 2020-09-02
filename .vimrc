set mouse=a
"copy yanked selection to system clipboard
nnoremap gy :call setreg('+', @0)<CR>
" go back to last buffer 
noremap <Backspace> <C-^> 
"nnoremap th  :tabfirst<CR>
nnoremap gk  :tabnext<CR>
nnoremap gj  :tabprev<CR>
"nnoremap td  :tabclose<CR>
nnoremap gd :r!today<CR>
nnoremap gt :NERDTreeTabsToggle<CR>
nnoremap gn :NERDTreeFocusToggle<CR>

set number
set background=dark
set clipboard=unnamed
set encoding=utf-8

let python_highlight_all=1
syntax on

"Enable folding
set foldmethod=indent
set foldlevel=99

"Enable folding with the spacebar
nnoremap <space> za

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

"stuff from realpython.com to get bundle going
set nocompatible "required
filetype off	"required
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'gmarik/vundle.vim'

"add all your plugins here (note older versions of undle
"used Bundle instead of Plugin
"
"
Bundle 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'

"All your Plugins must be added before the following line
call vundle#end() 		"required
filetype plugin indent on 	"required 

let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"colorscheme solarized
"call togglebg#map("<F5>")


"remove banner from netrw and set default file open mode to new tab
let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_browse_winsize = 25
