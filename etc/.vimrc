""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
set nohls
set incsearch
set virtualedit=all
set history=700
set number

" filetype plugin
filetype plugin on
filetype indent on

set autoread

" Auto reload vimrc
autocmd! bufwritepost vimrc source ~/.vimrc

let mapleader = ","
let g:mapleader = ","

""""""""""""""""""""""""""""""""""""""""
" XML
""""""""""""""""""""""""""""""""""""""""
map <leader>x :set filetype=xml<CR>
	\:source $VIMRUNTIME/syntax/xml.vim
	\:set foldmethod=syntax<CR>
  	\:source $VIMRUNTIME/syntax/syntax.vim<CR>
  	\:colors peachpuff<CR>
  	\:source $HOME/.vim/ftplugin/xml.vim<CR>
  	\:iunmap <buffer> <leader>.<CR>
  	\:iunmap <buffer> <leader>><CR>
  	\:inoremap \> ><CR>
  	\:echo "XML mode is on"<CR>
  	" no imaps for <leader>
  	"\:inoremap \. ><CR>

" catalog should be set up
nmap <leader>l <leader>cd:%w !xmllint --valid --noout -<CR>
nmap <leader>r <leader>cd:%w !rxp -V -N -s -x<CR>
nmap <leader>d4 :%w !xmllint --dtdvalid 
  \ "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd"
  \ --noout -<CR>

vmap <leader>px !xmllint --format -<CR>
nmap <leader>px !!xmllint --format -<CR>
nmap <leader>pxa :%!xmllint --format -<CR>

nmap <leader>i :%!xsltlint<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Java
""""""""""""""""""""""""""""""""""""""""""""""""""
set sm
set ai
syntax on
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
source $HOME/.vim/plugin/javakit/vim/JavaKit.vim

""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags
""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_WinWidth = 50
map <F4> :TlistToggle<CR>
"map <F8> :!/usr/bin/ctags -R .<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#runtime_append_all_bundles()

""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized
""""""""""""""""""""""""""""""""""""""""""""""""""
"syntax enable
"set background=dark
"colorscheme solarized

