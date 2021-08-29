" ===
" === vim-airline
" ===
let g:airline_powerline_fonts = 0
let g:airline_theme='dracula'
"let g:airline_theme='base16_dracula'

" Show buffers count
let g:airline#extensions#tabline#buffer_nr_show=1

" ===
" === indentLine
" ===
let g:indentLine_enabled = 0
"let g:indentLine_color_term = 1

" ===
" === NERDTree
" ===


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


