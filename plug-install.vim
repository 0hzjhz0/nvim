"===
"=== Install Plugins with Vim-Plug
"===
call plug#begin('$HOME/.config/nvim/plugged')

" Pretty dress
Plug 'ajmwagar/vim-deus'
Plug 'bling/vim-bufferline'

" Status line
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'dracula/vim'
Plug 'theniceboy/eleline.vim'

" General Highlighter
Plug 'RRethy/vim-illuminate'
Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'}

" Markdwon
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }


" Auto Complete
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Snippets


" Undo Tree
Plug 'mbbill/undotree/'



" Editor Enhancement
Plug 'Yggdroot/indentLine'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
"Plug 'vimwiki/vimwiki'

" Other visual enhancement
Plug 'luochen1990/rainbow'

call plug#end()
