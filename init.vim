"dein Scripts-----------------------------
"vi互換のinactivate
if &compatible
  set nocompatible 
endif
" For loading keymaps.vim 
set runtimepath+=$HOME/.config/nvim
runtime! keymaps.vim

" Required:
set runtimepath+=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim 
" Required:
if dein#load_state($HOME . '/.config/nvim/dein')

  " XDG base direcory compartible
  let g:dein#cache_directory = $HOME . '/.config/nvim/dein'
 " let g:dein#cache_directory = $HOME . '/.cache/dein'

"  " Python2 support
  let g:loaded_python_provider = 1
  " Python3 support
"  let g:python3_host_prog = $PYENV_ROOT.'/versions/anaconda3-5.2.0/bin/python3'
  let g:python3_host_prog = '/usr/local/bin/python3'

  " dein begin
  call dein#begin($HOME . '/.config/nvim/dein')

 " プラグインリストを収めた TOML ファイル
 " 予め TOML ファイル（後述）を用意しておく
 let s:toml_dir  = $HOME . '/.config/nvim/dein/toml' 
 let s:toml      = s:toml_dir . '/dein.toml'
 let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

 " TOML を読み込み、キャッシュしておく
 call dein#load_toml(s:toml,      {'lazy': 0})
 call dein#load_toml(s:lazy_toml, {'lazy': 1})


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"タブ入力を空白に変更"
set expandtab
"タブを2文字の空白に変換"
set tabstop=2
"自動インデント時に入力する空白の数"
set shiftwidth=2
set softtabstop=2
"改行時に自動でインデント"
set autoindent
"画面を縦分割する際に右に開く"
set splitright
"画面を横分割する際に下に開く"
set splitbelow

set smartindent
"行数表示"
set number
"yank した文字列をクリップボードにコピー"
set clipboard=unnamed

set guifont=Ricty:h14

set showtabline=2

"set termguicolors

colorscheme molokai

"set transparency=15

