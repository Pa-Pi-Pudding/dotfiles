
" File encoding
if !exists ('g:encoding_set') || !has('nvim')
    set encoding=utf-8
    set fileencodings=utf-8,sjis,iso-2022-jp,cp932,euc-jp
    let g:encoding_set=1
endif
scriptencoding utf-8

" Don't create swp file
set nowritebackup
set nobackup
set noswapfile
set noundofile

" set modifiable
" set write

" Show column number
set number
set cursorline
hi CursorLine term=bold ctermfg=Cyan guifg=#80a0ff gui=bold

" Long text
set wrap
set textwidth=0
set colorcolumn=120

"  □,○ text was not garbled
set ambiwidth=double

" Invisible stirng
set list
set listchars=tab:»-,extends:»,precedes:«,nbsp:%,eol:$,trail:~

" Colors
set t_Co=256
set background=dark

" Round indent to multipul of shiftwidth
set shiftround

" Don't unload buffer when it is abandones
set hidden

" New load buffer is use open
set switchbuf=useopen

" Smart insert tab setting.
set smarttab

" Excahnge tab to space.
set expandtab

" Auto insert indent.
set autoindent

" use delete key in insert
set backspace=indent,eol,start

" Round indent by shiftwidth.
set shiftwidth=4
set shiftround

" Space insert by autoindent
set tabstop=4
set scrolloff=20

" Splitting a window will put the new window below the current one.
set splitbelow
" Splitting a window will put the new window right the current one.
set splitright
" Set minimal width for current window.
set winwidth=30
" Set minimal height for current window.
set winheight=1
" Set maximam maximam command line window.
set cmdwinheight=5
" No equal window size.
set noequalalways
" Adjust window size of preview and help.
set previewheight=8
set helpheight=12

" show tab line
set showtabline=2

" Ignore case is search patterns
set ignorecase

" No ignore case when pattern has uppercase
set smartcase

" Search is incremental search
set incsearch

" Show search result highlight
set hlsearch

" Share clipborad with system
let OSTYPE = system('uname')
if OSTYPE == "Darwin\n"
    set clipboard=unnamed,autoselect
elseif OSTYPE == "Linux\n"
    set clipboard&
    set clipboard^=unnamedplus
endif

" possible to move from the end of the line to the head of the next line by the cursor's transverse line
set whichwrap=b,s,h,l,<,>,[,],~
" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1
" デフォルトでツリーを表示させる
autocmd VimEnter * execute 'NERDTree'
" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっていない)
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" " ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()})}])]})

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
" ESCキー2度押しでハイライトの切り替え
source $VIMRUNTIME/macros/matchit.vim " Vimの「%」を拡張する
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数

"マウスの有効化
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif
"クリップボードからコピペするときにインテンドしないようにする

"""""""""""""""""""""""""""""""""""""""""""""""""""""
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 最後のカーソル位置を復元する
""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
""""""""""""""""""""""""""""""
"背景の透過-----------------------------------
augroup TransparentBG
  	autocmd!
	autocmd Colorscheme * highlight Normal ctermbg=none
	autocmd Colorscheme * highlight NonText ctermbg=none
	autocmd Colorscheme * highlight LineNr ctermbg=none
	autocmd Colorscheme * highlight Folded ctermbg=none
	autocmd Colorscheme * highlight EndOfBuffer ctermbg=none 
augroup END
"---------------------------------------------



syntax enable

