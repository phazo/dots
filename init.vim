" Plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

set nocompatible
set termguicolors
set ruler          			" Ruler on
set number relativenumber
set laststatus=2   			" Always show the statusline
set cmdheight=2    			" Make the command area two lines high
set cursorline     			" Highlight current line
set title          			" Set the title of the window in the terminal to the file
set scrolloff=10
set showmode
set showcmd             " show command in bottom bar

" ---------------
" Behaviors
" ---------------
syntax enable
set autoread          		" Automatically reload changes if detected
set wildmenu           		" Turn on WiLd menu
set wildmode=longest,full
set hidden             		" Change buffer - without saving
set history=768       	    " Number of things to remember in history.
set confirm            		" Enable error files & error jumping.
set clipboard+=unnamed 		" Yanks go on clipboard instead.
set autowrite          		" Writes on make/shell commands
"set timeoutlen=400     	" Time to wait for a command (after leader for example).
set ttimeout
set ttimeoutlen=100    		" Time to wait for a key sequence.
set nofoldenable       		" Disable folding entirely.
set foldlevelstart=99  		" I really don't like folds.
set formatoptions=crql
set iskeyword+=\$,-   		" Add extra characters that are valid parts of variables
set nostartofline      		" Don't go to the start of the line after some commands
set gdefault           		" this makes search/replace global by default
set switchbuf=useopen  		" Switch to an existing buffer if one exists
" set surround

" ---------------
" Text Format
" ---------------
set nowrap
set backspace=indent,eol,start " Delete everything with backspace
set tabstop=4       	" number of visual spaces per TAB
set softtabstop=4   	" number of spaces in tab when editing
set expandtab       	" tabs are spaces
set shiftwidth=4
" set shiftround
" set cindent
set autoindent
" set smarttab

set colorcolumn=121

filetype plugin indent on

" ---------------
" Searching
" ---------------
set ignorecase 				" Case insensitive search
set smartcase  				" Non-case sensitivse search
set incsearch  				" Incremental search
set hlsearch   				" Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-*
  
" ---------------
" Visual
" ---------------
set showmatch   			" Show matching brackets.
set matchtime=2 			" How many tenths of a second to blink

" required by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes



 
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
Plug '907th/vim-auto-save'                              " auto save changes
Plug 'junegunn/limelight.vim'

"Plug 'vim-scripts/mru.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-plug'
Plug 'amiorin/vim-project'
Plug 'easymotion/vim-easymotion'
"Plug 'vim-scripts/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
"Plug 'kien/ctrlp.vim'

"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'

Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'terryma/vim-expand-region'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'thaerkh/vim-indentguides'
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'Townk/vim-autoclose'
"Plug 'majutsushi/tagbar'
"Plug 'rafi/awesome-vim-colorschemes'
Plug 'prettier/vim-prettier'
" Plug 'dense-analysis/ale'
"Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
 Plug 'Shougo/denite.nvim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'vim-scripts/bufexplorer.zip'
"Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'heavenshell/vim-jsdoc'
Plug 'wesQ3/vim-windowswap'
Plug 'troydm/zoomwintab.vim'
"Plug 'taohexxx/lightline-solarized'
"Plug 'joshdick/onedark.vim'
"Plug 'rakr/vim-one'
"Plug 'tomasr/molokai'
"Plug 'ayu-theme/ayu-vim'
" Plug 'bosr/fzy.vim'
"Plug 'rking/ag.vim'
"Plug 'cloudhead/neovim-fuzzy'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
"Plug 'junegunn/fzf.vim'
"Plug 'lvht/fzf-mru'
"Plug 'vim-scripts/LeaderF'
"Plug 'wsdjeg/FlyGrep.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" LateX
Plug 'xuhdev/vim-latex-live-preview'
Plug 'lervag/vimtex'
"Plug 'maxbrunsfeld/vim-yankstack'

"Plug 'artur-shaik/vim-javacomplete2'

call plug#end()

"autocmd FileType java setlocal omnifunc=javacomplete#Complete




let g:python2_host_prog = "/usr/local/bin/python"
let g:python3_host_prog = "/usr/local/bin/python3" 




let g:UltiSnipsExpandTrigger="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets = "<c-s-tab>"

" LeaderF configuration
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font':"DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

" :Rainbow parentheses
let g:rainbow_active = 1 


" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U 
  
" ----------------------------------------
" Mappings
" ----------------------------------------

" Set leader to space
" Note: This line MUST come before any <leader> mappings
let mapleader=','
" let maplocalleader = ' '
  
" Integrate with system clipboard
set clipboard=unnamedplus,unnamed


autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
autocmd FileType tex setl updatetime=1

let g:livepreview_previewer = 'open -a zathura'

"let g:ale_linters = {
"\   'javascript': ['eslint'],
"\   'typescript': ['tsserver', 'tslint'],
"\   'vue': ['eslint']
"\}


"let g:ale_fixers = {
"\    'javascript': ['eslint'],
"\   'typescript': ['prettier', 'tslint'],
"\    'scss': ['prettier'],
"\    'html': ['prettier']
"\}
" let g:ale_fix_on_save = 1

let g:indent_guides_guide_size = 1

let g:indent_guides_color_change_percent = 1
let g:indent_guides_enable_on_vim_startup = 1

"inoremap <silent><expr> <c-space> coc#refresh()

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


noremap <silent> <space>p  :<C-u>CocList -A --normal yank<cr>
imap <C-l> <Plug>(coc-snippets-expand)
" COC end SETUP
" -----------------------------------------------------------------------------



" colorscheme deus 
colorscheme gruvbox
set background=dark
"let g:lightline = {
"      \ 'colorscheme': 'one',
"      \ }

" Nerd Tree options
let NERDTreeShowHidden=1  "  Always show dot files
let NERDTreeQuitOnOpen=1

" Mappings

noremap H ^
noremap L $
" D deletes to the end of the line, and Y yanks to end of line
nnoremap D d$
nnoremap Y y$
" Create newlines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j
nmap zk O<Esc>j  
" Scroll larger amounts with C-j / C-k
nnoremap gj 15gjzz
nnoremap gk 15gkzz
vnoremap gj 15gjzz
vnoremap gk 15gkzz
" Let's make escape better, together.
inoremap jk <Esc>
inoremap JK <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>
nnoremap <esc><esc> :noh<return>


" edit/save ideavimrc and load vimrc bindings
map <leader><leader>e :vsp /Users/phazo/.config/nvim/init.vim<CR>
map <leader><leader>s :source /Users/phazo/.config/nvim/init.vim<CR>
"map <leader><leader>e :vsp c:\Users\bpater\AppData\Local\nvim\init.vim<CR>
"map <leader><leader>s :source c:\Users\bpater\AppData\Local\nvim\init.vim<CR>

" Split window vertically or horizontally *and* switch to the new split!
map <leader>h :split<Bar>:wincmd j<CR>:wincmd =<CR>
map <leader>v :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>
map <Leader>r :LeaderfMru<CR>
map <leader>f :LeaderfFile<CR>
map <Leader>e :LeaderfBuffer<CR>
"map <leader>t :FlyGrep<CR>

nnoremap <leader>x :close<CR>
map <Leader>w  :NERDTreeFind<CR>
map <leader>n :bn<CR>
map <leader>p :bp<CR>
map <leader>gg :GV<CR>
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

" JsDoc
nmap <space>jd <Plug>(jsdoc)

map <space>w <Plug>(expand_region_expand)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> <space>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <space>] <Plug>(coc-diagnostic-next)

" Remap for rename current word
nmap <space>re <Plug>(coc-rename)
" Remap keys for gotos
nmap <space>gd <Plug>(coc-definition)
nmap <space>gy <Plug>(coc-type-definition)
nmap <space>gi <Plug>(coc-implementation)
nmap <space>gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> <space>d :call <SID>show_documentation()<CR>
" Remap for format selected region
xmap <space>fs  <Plug>(coc-format-selected)
nmap <space>fs  <Plug>(coc-format-selected)
nmap <space>ff :call CocAction('runCommand', 'prettier.formatFile')<CR>
nmap <space>fl :CocFix<CR>
" Fix autofix problem of current line
nmap <space>qf  <Plug>(coc-fix-current)
" Using CocList
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>t  :<c-u>coclist -i symbols<cr>
" resume latest coc list
nnoremap <silent> <space>rp  :<C-u>CocListResume<CR>
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
