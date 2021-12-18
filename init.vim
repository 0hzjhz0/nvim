"  __  _        __     _____ __  __ ____   ____
" |  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| | | | |  \ \ / / | || |\/| | |_) | |
" | |  | | |_| |   \ V /  | || |  | |  _ <| |___
" |_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"         |___/

" ==========================
" ====== Editor Setup ======
" ==========================
"
" ===
" === System
" ===
filetype on
filetype indent on      " 开启文件类型检查
filetype plugin on
filetype plugin indent on
set nocompatible        " 不兼容 Vi
set mouse=a             " 支持鼠标
set encoding=utf-8
set clipboard=unnamed   " 打开系统剪切版
set showmode            " 显示模式f

" Fix incorect backgroud rendering in st
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" ===
" === Main code display
" ===
set number              " 显示行号
set relativenumber      " 显示相对行号
set ruler               " 状态栏显示光标的位置
set cursorline          " 光标所在行高亮
set linebreak           " 不在单词内部发生折行
syntax enable
syntax on               " 语法高亮r

" ===
" === Editor behavior
" ===
" Better tab
set noexpandtab         " 不将Tab键转为空格 
set tabstop=4           " 按下Tab键，Vim显示的空格数
set shiftwidth=4        " 在文本上按下>>,<<,==(增减一级缩进，取消缩进)时，每级字符数
set softtabstop=4       " Tab键转为几个空格
set scrolloff=5         " 垂直滚动时，光标句顶部/底部的位置
set list
" set listchars=tab:▸\ ,trail:▫
set listchars=tab:\|\ ,trail:▫
set tw=0                " 设置行宽，一行显示几个字符

set indentexpr=

" Beter backspace
set backspace=indent,eol,start

set foldmethod=indent   " 代码折叠方式：缩进
set foldlevel=99
set autoindent          " 回车后下一行缩进和上一行保持一致

" Cursor style in st
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" ===
" === Status/command bar
" ===
set laststatus=2        " 显示状态栏(0,1,2)
set autochdir           " 自动切换工作目录
set showcmd             " 显示输入的命令
set formatoptions-=tc
set colorcolumn=100
set updatetime=100
set virtualedit=block

" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc 
set wildmenu            " 命令模式下tab键自动补全，第二次Tab键选择匹配结果
set wildmode=longest,list,full

" Searching options
set hlsearch            " 搜索时，高亮显示匹配结果
exec "nohlsearch"
set incsearch           " 没输入一个字符就自动跳到第一个匹配的结果
set ignorecase          " 搜索时忽略大小写
set smartcase
set noshowmatch         " 自动匹配括号引号等字符

" Restore Cursor Position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" ===========================
" ====== Basic Mappings ======
" ============================
let mapleader=" "
" Open the vimrc file anytime
noremap <LEADER>rc :e $HOME/AppData/Local/nvim/init.vim<CR>

" ===
" === Normal Mode
" ===
noremap ; :
" Save & quit
noremap Q :q<CR>
noremap S :w<CR>
" Disable the default s key
noremap s <nop>
" Indentation
noremap < <<
noremap > >>
" Press ` to change case (instead of ~)
noremap ` ~
 " make Y to copy till the end of the line
noremap Y y$
" Search
noremap - N
noremap = n
noremap <LEADER><CR> :nohlsearch<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
" Folding
noremap <silent> <c-o> za
" Opening a terminal window
noremap <leader>/ :set splitbelow<cr> :sp<cr> :term<cr>

" ===
" === Insert Mode
" ===
inoremap <C-a> <ESC>A
inoremap <C-i> <ESC>I

" ===
" === Window management
" ===
" Create a new window: split the screens to up(horizontal), down(horizontal), left(vertical),
" right(vertical)
map sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map sj :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sl :set splitright<CR>:vsplit<CR>

" Rotate screens
noremap wh <C-w>b<C-w>K
noremap wl <C-w>b<C-w>H

" Use <space> + new arrow keys for moving the cursor around windows
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l

" Resize splits with arrow keys
map ek :res +5<CR>
map ej :res -5<CR>
map eh :vertical resize-5<CR>
map el :vertical resize+5<CR>

" ===
" === Tab management
" ===
" Create a new tab with tk
map ta :tabe<CR>
" Move around tabs with th and tl
map th :-tabnext<CR>
map tl :+tabnext<CR>
" Move the tabs with tk and tj
map tj :-tabmove<CR>
map tk :+tabmove<CR>=
