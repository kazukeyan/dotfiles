filetype off
filetype plugin indent off

"-------------------------------------------------------------------------------
" NeoBundle設定
"-------------------------------------------------------------------------------
if has('vim_starting')
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/dotfiles/.vim/bundle/'))

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'tpope/vim-endwise.git'
NeoBundle 'tpope/vim-rails'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/dbext.vim'
NeoBundle 'vim-scripts/desert.vim'
NeoBundle 'Lokaltog/vim-powerline'

"-------------------------------------------------------------------------------
" 基本設定
"-------------------------------------------------------------------------------
" 色設定
colorscheme desert
" フォント設定

" エンコーディング設定
set encoding=utf-8
" ファイル文字コード自動認識
set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp,default,latin
" 他のエディタなどで変更された際の自動反映
set autoread
" バックアップ/スワップファイルを作成しない
set nobackup
" 空白文字の表示
set list
" 行番号の表示
set number
" クリップボードOS共有
set clipboard=unnamed
" タブ文字を空白入力に
set expandtab

"-------------------------------------------------------------------------------
" オートコマンド設定
"-------------------------------------------------------------------------------
au BufNewFile,BufRead *.rb  set nowrap tabstop=2 shiftwidth=2

" neocomplcacheを起動時に有効化
let g:neocomplcache_enable_at_startup = 1
" history/yankの有効化
let g:unite_source_history_yank_enable =1
nnoremap <silent> ,gy :<C-u>Unite history/yank<CR>

" .vimrcを開く
nnoremap ,ev. :<C-u>edit $MYVIMRC<CR>

" .vimrcを即座に反映する　
nnoremap ,sv. :<C-u>source $MYVIMRC<CR>

filetype plugin indent on

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif
