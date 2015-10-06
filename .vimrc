syntax on
set number
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent><C-n> gt<CR>
nnoremap <silent><C-p> gT<CR>
nnoremap <silent><C-w> :closetab<CR>

""""""""""""""""""""""""""
" Plugin setup
"""""""""""""""""""""""""

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neomru.vim'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""
" /Plugin setup
"""""""""""""""""""""""""
