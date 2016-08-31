""""""""""""""""""""""""""""""
" Setup for Vim plugins
""""""""""""""""""""""""""""""
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
" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
" Show File Tree
NeoBundle 'scrooloose/nerdtree'
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <C-l> gt
nnoremap <C-h> gT
" File Search
NeoBundle "ctrlpvim/ctrlp.vim"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png,*.map
let g:ctrlp_custom_ignore = '\v[\/](node_modules|build)$'

" For TypeScript
NeoBundleLazy 'leafgarland/typescript-vim', {
\ 'autoload' : {
\   'filetypes' : ['typescript'] }
\}
NeoBundleLazy 'jason0x43/vim-js-indent', {
\ 'autoload' : {
\   'filetypes' : ['javascript', 'typescript', 'html'],
\}}
let g:js_indent_typescript = 1
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'Quramy/tsuquyomi'
"autocmd FileType typescript setlocal completeopt-=menu
let g:tsuquyomi_completion_detail = 1
autocmd FileType typescript setlocal completeopt+=menu,preview


call neobundle#end()

" Required:
filetype plugin indent on

" Default settings
set number

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
""""""""""""""""""""""""""""""
