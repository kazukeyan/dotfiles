filetype off
filetype plugin indent off

"-------------------------------------------------------------------------------
" NeoBundle設定
"-------------------------------------------------------------------------------
if has('vim_starting')
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/dotfiles/.vim/bundle/'))

"-------------------------------------------------------------------------------
" プラグイン
"-------------------------------------------------------------------------------
" 非同期実行ライブラリ
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'
" シェル実行
NeoBundle 'Shougo/vimshell'
" 自動補完
NeoBundle 'Shougo/neocomplcache'
" 統合プラグイン
NeoBundle 'Shougo/unite.vim'
" アウトライン機能
NeoBundle 'h1mesuke/unite-outline'
" フォント選択
NeoBundle 'ujihisa/unite-font'
" カラースキーマ選択
NeoBundle 'ujihisa/unite-colorscheme'
" 構文終了自動入力
NeoBundle 'tpope/vim-endwise.git'
" Rails開発プラグイン
NeoBundle 'tpope/vim-rails'
" ツリー型エクスプローラ
NeoBundle 'scrooloose/nerdtree'
" データベース操作
NeoBundle 'vim-scripts/dbext.vim'
" Desertカラースキーマ
NeoBundle 'vim-scripts/desert.vim'
" ステータスラインカスタマイズ
NeoBundle 'Lokaltog/vim-powerline'

"-------------------------------------------------------------------------------
" 基本設定
"-------------------------------------------------------------------------------
" 色設定
colorscheme desert
" 補完ポップアップの色設定
hi Pmenu guibg=#666666
hi PmenuSel guibg=#8cd0d3 guifg=#666666
hi PmenuSbar guibg=#333333

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

"-------------------------------------------------------------------------------
" キーマッピング
"-------------------------------------------------------------------------------
" .vimrcを開く
nnoremap ,ev. :<C-u>edit $MYVIMRC<CR>
" .vimrcの反映
nnoremap ,sv. :<C-u>source $MYVIMRC<CR>
" history/yank
noremap <silent> ,gy :<C-u>Unite history/yank<CR>

"-------------------------------------------------------------------------------
" 変数設定
"-------------------------------------------------------------------------------
" neocomplcacheを起動時に有効化
let g:neocomplcache_enable_at_startup = 1
" history/yankの有効化
let g:unite_source_history_yank_enable =1
" Uniteを縦分割で開始
let g:unite_enable_split_vertically = 1

filetype plugin indent on

" NeoBundle installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif
