syntax on
set ts=4
set expandtab

set nocompatible " be iMproved
filetype off " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'FuzzyFinder'
Plugin 'vim-scripts/winmanager'
Plugin 'The-NERD-tree'
Plugin 'tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"let loaded_nerd_tree=0

map <C-P> :FufCoverageFile<CR>
map! <C-P> :FufCoverageFile<CR>

nmap <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

nmap <F8> :TagbarToggle<CR>

map <C-J> 15j<CR>
