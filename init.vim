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

nnoremap fj :cnext<CR>
nnoremap fk :cprev<CR>

call plug#begin('~/.nvim/plugged')

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

Plug 'scrooloose/nerdcommenter'

"format
Plug 'Chiel92/vim-autoformat'

"highligh
Plug 'jackguo380/vim-lsp-cxx-highlight'


Plug 'altercation/vim-colors-solarized'

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

nnoremap <silent>K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if &filetype == 'vim'
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>qf <Plug>(coc-fix-current)
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

set statusline^=%{coc#status()}%{get(b:'coc_current_function','')}

"nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = {'c': {'left': '/**', 'right': '*/'}}
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

"format
"vim-autofmt
autocmd BufWrite *.scala :Autoformat
autocmd BufWrite *.h :Autoformat
autocmd BufWrite *.c :Autoformat
autocmd BufWrite *.go :Autoformat

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"c/c++
"clang-format

"golang
"gofmt
"glang gopls GO111MODULE=on
"go get golang.org/x/tools/gopls@latest .
"auto import
"autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
"autocmd BufWritePre *.go :call CocAction('format')

"scala
let g:formatdef_scalafmt = "'scalafmt --stdin 2>/dev/null'"
let g:formatters_scala = ['scalafmt']
"autocmd BufRead,BufNewFile *.sbt set filetype=scala
"autocmd FileType json syntax match Comment +\/\/.\+$+
"
command! -nargs=0 MetalsImport :call CocRequestAsync('metals', 'workspace/executeCommand', { 'command': 'build-import' })


"highlight
set background=dark
colorscheme solarized
"clang-format/vim-lsp-cxx-highlight
