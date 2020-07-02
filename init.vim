call plug#begin()
" MUST
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'

" SYNTAX
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdcommenter'

" Colors
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'norcalli/nvim-colorizer.lua'

" Others
Plug 'liuchengxu/vim-which-key'
call plug#end()

" WHICH KEY
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

"CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
" use <c-space>for trigger completion
inoremap <silent><expr> <NUL> coc#refresh()

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

"Lightline
if !has('gui_running')
  set t_Co=256
endif

" Closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue,*.js'

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

filetype plugin on
syntax enable
set number
set showcmd
set ruler
set encoding=utf-8
set expandtab
set tabstop=2 shiftwidth=2
set relativenumber

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
