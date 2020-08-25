" Plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

syntax on

set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey
 
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'lvht/fzf-mru'
"Plug 'gruvbox-community/gruvbox'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-plug'
Plug 'amiorin/vim-project'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'Yggdroot/indentLine'
Plug 'Townk/vim-autoclose'
Plug 'prettier/vim-prettier'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'wesQ3/vim-windowswap'
Plug 'troydm/zoomwintab.vim'

call plug#end()

" Python paths settings
"let g:python3_host_prog = "/usr/bin/Python"
"let g:python2_host_prog = "/usr/local/bin/python"
"let g:python3_host_prog = "/usr/local/bin/python3" 

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets = "<c-s-tab>"

" :Rainbow parentheses
let g:rainbow_active = 1 

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U 
  
let loaded_matchparen = 1
  
" Integrate with system clipboard
set clipboard=unnamedplus,unnamed

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_checkout_track_key = 'ctrl-t'

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
autocmd FileType tex setl updatetime=1

let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 1
let g:indent_guides_enable_on_vim_startup = 1

let g:coc_global_extensions = [
        \ 'coc-css',
        \ 'coc-highlight',
        \ 'coc-html',
        \ 'coc-json',
        \ 'coc-snippets',
        \ 'coc-stylelint',
        \ 'coc-tag',
        \ 'coc-tsserver',
        \ 'coc-prettier',
        \ 'coc-eslint',
        \ 'coc-tslint',
        \ 'coc-angular',
        \ 'coc-marketplace',
        \ 'coc-java',
        \ 'coc-java-lombok',
        \ 'coc-yank'
        \ ]


" ----------------------------------------------------------------------
"  COC SETUP
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" COC end SETUP
" -----------------------------------------------------------------------------

" Nerd Tree options
let NERDTreeShowHidden=1  "  Always show dot files
let NERDTreeQuitOnOpen=1


""" MAPPINGS
let mapleader=','

noremap <silent> <space>p  :<C-u>CocList -A --normal yank<cr>
imap <C-l> <Plug>(coc-snippets-expand)

" Mappings

noremap H ^
noremap L $
nnoremap D d$
nnoremap Y y$
nnoremap go o<Esc>k
nnoremap gO O<Esc>j
nmap zk O<Esc>j  
nnoremap gj 15gjzz
nnoremap gk 15gkzz
vnoremap gj 15gjzz
vnoremap gk 15gkzz
inoremap jk <Esc>
nnoremap <esc><esc> :noh<return>

" edit/save ideavimrc and load vimrc bindings
map <leader><leader>e :vsp /Users/phazo/.config/nvim/init.vim<CR>
map <leader><leader>s :source /Users/phazo/.config/nvim/init.vim<CR>
"map <leader><leader>e :vsp c:\Users\bpater\AppData\Local\nvim\init.vim<CR>
"map <leader><leader>s :source c:\Users\bpater\AppData\Local\nvim\init.vim<CR>

" Split window vertically or horizontally *and* switch to the new split!
map <leader>h :split<Bar>:wincmd j<CR>:wincmd =<CR>
map <leader>v :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>
map <Leader>r :FZFMru<CR>
map <leader>f :Files<CR>
map <Leader>e :Buffers<CR>
map <leader>t :Rg<CR>
map <leader>ghw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>gc :GCheckout<cr>
nmap <leader>gs :G<CR>
nmap <leader>gv :GV<CR>

nnoremap <leader>x :close<CR>
map <Leader>w  :NERDTreeFind<CR>
map <leader>n :bn<CR>
map <leader>p :bp<CR>
map <Leader>q :Goyo 120<CR>;
map <Leader>z :ZoomWinTabToggle<CR>
" Show all diagnostics
nnoremap <silent> <leader>rd  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>re  :<C-u>CocList extensions<cr>


nnoremap <space>s :w<CR>
" key bindings for quickly moving between windows: h left, l right, k up, j down
nmap <space>h <c-w>h
nmap <space>l <c-w>l
nmap <space>k <c-w>k
nmap <space>j <c-w>j
nmap <space>b <C-o>
nmap <space>n <C-i>
map <space><Enter> i<Enter><ESC>
map <space>; A;<ESC>
map <space>al :ALEFix<CR>

" <Leader><Leader>f{char} to move to {char}
map  <space><space>f <Plug>(easymotion-bd-f)
nmap <space><space>f <Plug>(easymotion-overwin-f)
" Move to line
map <space><space>l <Plug>(easymotion-bd-jk)
nmap <space><space>l <Plug>(easymotion-overwin-line)
" Move to word
map  <space><space>w <Plug>(easymotion-bd-w)
nmap <space><space>w <Plug>(easymotion-overwin-w)

nmap <space>gd <Plug>(coc-definition)
nmap <space>gy <Plug>(coc-type-definition)
nmap <space>gi <Plug>(coc-implementation)
nmap <space>gr <Plug>(coc-references)
nmap <space>rr <Plug>(coc-rename)
nmap <silent> <space>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <space>] <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>d :call <SID>show_documentation()<CR>
" Remap for format selected region
xmap <space>fs  <Plug>(coc-format-selected)
nmap <space>fs  <Plug>(coc-format-selected)
nmap <space>ff :Format<CR>
nmap <space>fl :CocFix<CR>
nmap <space>fi :OR<CR>
" Fix autofix problem of current line
nmap <space>qf  <Plug>(coc-fix-current)
" Using CocList
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
"nnoremap <silent> <leader>t  :<c-u>coclist -i symbols<cr>
" resume latest coc list
"nnoremap <silent> <space>rp  :<C-u>CocListResume<CR>
imap ;; <ESC>A;<ESC>

map <leader>ma mA
map ma `A
map <leader>ms mS
map ms `S
map <leader>md mD
map md `D

map <leader>mq mQ
map mq `Q
map <leader>mw mW
map mw `W
map <leader>me mE
map me `E
