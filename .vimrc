" vundle 
" needed to run vundle (but i want this anyways)
set nocompatible
" vundle needs filtype plugins off
filetype plugin indent off
syntax off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" start vundle environment
call vundle#begin()

" let Vundle manage Vundle (this is required)
Plugin 'VundleVim/Vundle.vim'

" to install a plugin add it here and run :PluginInstall.
" to update the plugins run :PluginInstall! or :PluginUpdate
" to delete a plugin remove it here and run :PluginClean
Plugin 'bling/vim-airline'
Plugin 'joshdick/onedark.vim'
Plugin 'simnalamburt/vim-mundo'
Plugin 'fatih/vim-go'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'sheerun/vim-polyglot'
" add plugins before this
call vundle#end()
filetype plugin indent on
syntax on
colorscheme onedark
set tabstop=2         " number of visual spaces per TAB
set softtabstop=2     " number of spaces in tab when editing
set expandtab         " tabs are spaces
set number            " show line numbers
set relativenumber    " show relative line number depending on cursor
set showcmd           " show command in bottom bar
set cursorline        " highlight current line
filetype indent on    " load filetype-specific indent files
set wildmenu          " visual autocomplete for command menu
set showmatch         " highlight matching parenthesesg
set incsearch         " search as characters are entered
set hlsearch          " highlight matches
set foldenable        " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10    " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent " fold based on indent level
" move vertically by visual line
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
let mapleader=","     " leader is comma
inoremap jk <esc>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>vm :vsp $MYVIMRC<CR>
" execute python code within vim
nnoremap <F9> :w<CR>:!clear;python %<CR>
" resize split windows with mouse
set mouse=n
set ttymouse=xterm2
" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo
"toggle mundo
nnoremap <F5> :MundoToggle<CR>
"" YCM settings
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \ 'g:ycm_python_interpreter_path',
  \ 'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/pythonenvs/global_extra_conf.py'
" jedi config
let g:jedi#show_call_signatures = "2"
