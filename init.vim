set nocompatible
syntax on

set encoding=utf-8
set number
set relativenumber
set cursorline
set hlsearch
exec "nohlsearch"
set mouse=a
set incsearch
set ignorecase
set smartcase
set autowrite
set autochdir
set backspace=indent,eol,start
"set hidden
set cmdheight=2
set updatetime=300
"set signcolumn=yes
"
""some language server have issue with backup files
set nobackup
set nowritebackup
"
""don't give | ins-completion-menu | messages.
set shortmess+=c

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ts=4
set autoindent

set history=200
set scrolloff=20
set path+=./**

let mapleader=" "
noremap <LEADER><CR> :nohlsearch<CR>

nnoremap <LEADER>l <C-w>l
nnoremap <LEADER>k <C-w>k
nnoremap <LEADER>j <C-w>j
nnoremap <LEADER>h <C-w>h

nnoremap sl :set splitright<CR>:vsplit<CR>
nnoremap sh :set nosplitright<CR>:vsplit<CR>
nnoremap sk :set nosplitbelow<CR>:split<CR>
nnoremap sj :set splitbelow<CR>:split<CR>

nnoremap bj :bnext<CR>
nnoremap bk :bprevious<CR>

nnoremap tn :tabe<CR>
nnoremap tk :-tabnext<CR>
nnoremap tj :+tabnext<CR>

nnoremap <left> :vertical resize-5<CR>
nnoremap <right> :vertical resize+5<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'yianwillis/vimcdoc'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'derekwyatt/vim-scala'

"coc plug
"coc-json, coc-tsserver, coc-html, coc-css, coc-vetur, coc-yaml, coc-python
"coc-highlight, coc-snippets, coc-git, coc-vimlsp, coc-xml, coc-pairs

Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
"support python: pip install pydi
"support bash: npn i -g bash-language-server

call plug#end()

"nerdtree plug
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-f>"


"auto completion by tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

"coc.nvim plug
let g:coc_root_patterns = ['.git', 'CMakeLists.txt']
nmap <silent> <LEADER>gd <Plug>(coc-definition)
nmap <silent> <LEADER>gt <Plug>(coc-type-definition)
nmap <silent> <LEADER>gi <Plug>(coc-implementation)
nmap <silent> <LEADER>fr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
autocmd CursorHold * silent call CocActionAsync('highlight')

"gtags
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'

"glang gopls GO111MODULE=on
"go get golang.org/x/tools/gopls@latest .
"auto import
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
autocmd BufWritePre *.go :call CocAction('format')

"scala
autocmd BufRead,BufNewFile *.sbt set filetype=scala

set statusline^=%{coc#status()}%{get(b:'coc_current_function','')}
