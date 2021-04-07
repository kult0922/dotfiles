call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" ファイルオープンを便利に
Plug 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
Plug 'Shougo/neomru.vim'

"Plug 'jdkanani/vim-material-theme'

" ステータスバー強化
Plug 'itchyny/lightline.vim'
" 文末スペースの可視化
Plug 'bronson/vim-trailing-whitespace'
" インデントの可視化
Plug 'Yggdroot/indentLine'
" 補完機能
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()


" Indent
set expandtab
set smartindent
set autoindent
set backspace=indent,eol,start

" for lucario
syntax enable
set number
colorscheme lucario
set t_Co=256¬

" for lightline
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの現在位置を表示する

" 検索のハイライト設定
set hlsearch
hi Search ctermbg=Brown
hi Search ctermfg=White

" key map
inoremap <silent> jj <ESC>

"" ファイルごとに設定を分岐
autocmd BufRead,BufNewFile *.py setfiletype python
autocmd BufRead,BufNewFile *.js setfiletype javascript
autocmd BufRead,BufNewFile *.java setfiletype java
autocmd BufRead,BufNewFile *.css setfiletype css
autocmd BufRead,BufNewFile *.html setfiletype html
autocmd BufRead,BufNewFile *.go setfiletype go

