" ====================
" === Editor Setup ===
" ====================

" ===
" === System
" ===
set nocompatible		" 不兼容 Vi
filetype on
filetype indent on		" 开启文件类型检查
filetype plugin on
filetype plugin indent on
set mouse=a				" 支持鼠标
set encoding=utf-8
set clipboard=unnamed   " 打开系统剪切版
set showmode			" 显示模式

" Prevent incorrect backgroud rendering in st
" let &t_ut=''
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" ===
" === Main code display
" ===
set number				" 显示行号
set relativenumber		" 显示相对行号
set ruler				" 状态栏显示光标的位置
set cursorline			" 光标所在行高亮
syntax enable
syntax on				" 语法高亮
set linebreak			" 不在单词内部发生折行

" ===
" === Editor behavior
" ===
" Better tab
set noexpandtab			" 不将Tab键转为空格 
set tabstop=4			" 按下Tab键，Vim显示的空格数
set shiftwidth=4		" 在文本上按下>>,<<,==(增减一级缩进，取消缩进)时，每级字符数
set softtabstop=4		" Tab键转为几个空格
set list
" set listchars=tab:▸\ ,trail:▫
set listchars=tab:\|\ ,trail:▫
set scrolloff=5			" 垂直滚动时，光标句顶部/底部的位置

" Prevent auto line split
set wrap				" 自动折行
set tw=0				" 设置行宽，一行显示几个字符

set indentexpr=

" Beter backspace
set backspace=indent,eol,start

set foldmethod=indent  " 代码折叠方式：缩进
set foldlevel=99

" Cursor style in st
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" ===
" === Window behaviors
" ===
set splitright
set splitbelow

" ===
" === Status/command bar
" ===
set laststatus=2		" 显示状态栏(0,1,2)
set autochdir			" 自动切换工作目录
set showcmd				" 显示输入的命令
set formatoptions-=tc

" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc 
set wildmenu			" 命令模式下tab键自动补全，第二次Tab键选择匹配结果
set wildmode=longest,list,full

set autoindent			" 回车后下一行缩进和上一行保持一致

" Searching options
set hlsearch			" 搜索时，高亮显示匹配结果
exec "nohlsearch"
set incsearch			" 没输入一个字符就自动跳到第一个匹配的结果
set ignorecase			" 搜索时忽略大小写
set smartcase       
set noshowmatch			" 自动匹配括号引号等字符

" ===
" === Restore Cursor Position
" ===
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
