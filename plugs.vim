"===
"=== Install Plugins with Vim-Plug
"===
call plug#begin('$HOME/.config/nvim/plugged')

" Treesitter  ?? 编译期语法树
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'

" Pretty dress
"Plug 'ajmwagar/vim-deus'
Plug 'theniceboy/nvim-deus'
Plug 'bling/vim-bufferline'

" Status line
Plug 'theniceboy/eleline.vim'
Plug 'ojroques/vim-scrollstatus'     " 状态栏添加滑动条

" General Highlighter
Plug 'RRethy/vim-illuminate'
Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'}

" File navigation 还没搞懂
"Plug 'junegunn/fzf.vim'
"Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
"Plug 'kevinhwang91/rnvimr'
"Plug 'airblade/vim-rooter'
"Plug 'pechorin/any-jump.vim'

" Markdwon
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}


" Taglist  还没搞懂
Plug 'liuchengxu/vista.vim'


" Auto Complete
Plug 'neoclide/coc.nvim', { 'branch': 'release' }


" Undo Tree
Plug 'mbbill/undotree/'

" Git  待研究
Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'kdheepak/lazygit.nvim'


" Autoformat
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'


" Editor Enhancement
Plug 'Yggdroot/indentLine'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }

" Other visual enhancement
Plug 'luochen1990/rainbow'
Plug 'mg979/vim-xtabline'   " table line
Plug 'ryanoasis/vim-devicons'
Plug 'wincent/terminus'

call plug#end()


"===
"=== Dress op my vim
"===
set termguicolors             " enable true color support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
hi NonText ctermfg=gray guifg=grey10
color deus
" hi SpecialKey ctermfg=black guifg=grey0


" ===
" === eleline.vim
" ===
let g:airline_powerline_fonts = 0


" ===
" === vim-illuminate
" ===
let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=undercurl


" ===
" === coc.nvim
" ===
let g:coc_global_extensions = [
	\ 'coc-json',
	\ 'coc-vimlsp',
	\ 'coc-gitignore']

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-o> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'firefox'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" ===
" === vim-table-mode
" ===
noremap <LEADER>tm :TableModeToggle<CR>

" ===
" === rainbow
" ===
let g:rainbow_active = 1

" ===
" === xtabline
" ===
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
noremap \p :echo expand('%:p')<CR>
