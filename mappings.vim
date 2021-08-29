" ===
" === Basic Mappings
" ===

inoremap jj <ESC>

" Open the vimrc file anytime
noremap <LEADER>rc :e $HOME/.config/nvim/init.vim<CR>

" Set <LEADER> as <SPACE>, ; as :
let mapleader=" "
map ; :
map q;  q:        " 显示历史命令记录


" Save & quit
map Q :q<CR>
map S :w<CR>
map s <nop>       " 屏蔽s
map R :source $MYVIMRC<CR>


" Copy to system clipboard
vnoremap Y "+y

" Indentation in normal mode
nnoremap < <<
nnoremap > >>

" Search in normal mode
noremap <LEADER><CR> :nohlsearch<CR>  " 取消高亮
noremap = nzz      " 下一条搜索结果zz表示让其处于屏幕中心"===
noremap - Nzz      " 上一条搜索结果"=== 普通模式下键位映射


" Duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

map <LEADER>o o<Esc>k       " 插入空白行


"===
"=== Window management
"===
" Using <space> + new arrow keys for moving the cursor around windows
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l

" split the screens to up(horizontal), down(horizontal), left(vertical), right(vertical)
map sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map sj :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sl :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H


" ===
" === Tab management
" ===
" Create a new tab with tk
map tk :tabe<CR>
" Move around tabs with th and tl
map th :-tabnext<CR>
map tl :+tabnext<CR>
" Move the tabs with tmh and tml
map tmh :-tabmove<CR>
map tml :+tabmove<CR>

" ===
" === Other useful stuff
" ===

" Press space twice to jumpy to the next '<++>' and edit it
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Compile function
" Compile function
map r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    silent! exec "!clear"
    exec "!time python3 %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
  endif
endfunc

