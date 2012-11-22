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

"-------------------------------------------------------------------------------
" 基本設定
"-------------------------------------------------------------------------------
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

filetype plugin indent on

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif
