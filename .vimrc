filetype plugin on
set bg=dark

set rtp+=~/.vim/Vundle.vim
set encoding=UTF-8

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-python/python-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
"Plugin 'sheerun/vim-polyglot'
Plugin 'SirVer/ultisnips'
Plugin 'mlaursen/vim-react-snippets'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'ryanoasis/vim-devicons'

call vundle#end()

syntax on
let g:python_highlight_all = 1
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number relativenumber
set autoindent
set hlsearch
set incsearch
set fileformat=unix
set clipboard=unnamedplus
set wildmode=longest,list,full
imap <C-t> <Esc>:tabnew<CR>

nnoremap S :%s///g<Left><Left><Left>
nnoremap <C-s> :w
nnoremap <silent> <C-t> :tabnew<CR>
"nnoremap <C-b> :NERDTree<CR>
" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-w> :w<CR>:bdelete<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
" ignora algumas pastas
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" encontra arquivos com .
let g:ctrlp_dotfiles = 1

imap <C-s> <Esc>:w<CR><i>
" Por conta do airline é necessário colocar o :w antes de mudar de tab
imap <C-PageUp> <Esc>:bp<CR>
imap <C-PageDown> <Esc>:bn<CR>
map <C-PageUp> :bp<CR>
map <C-PageDown> :bn<CR>

map <S-insert> <C-i>
autocmd BufWritePre * %s/\s\+$//e

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.linenr = ' '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

" emmet config

let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Recover automatico
augroup AutomaticSwapRecoveryAndDelete
    autocmd!
    autocmd SwapExists * :let v:swapchoice = 'r' | let b:swapname = v:swapname
    autocmd VimLeave * :if exists("b:swapname") | call delete(b:swapname) | endif
augroup end
