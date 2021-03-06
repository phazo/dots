" Plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" WINDOWS
au VimEnter * GuiPopupmenu 0


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

Plug 'gruvbox-community/gruvbox'
"Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-plug'
Plug 'amiorin/vim-project'
"Plug 'dbakker/vim-projectroot'
"Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'Yggdroot/indentLine'
Plug 'Townk/vim-autoclose'
Plug 'prettier/vim-prettier'


Plug 'wesQ3/vim-windowswap'
Plug 'troydm/zoomwintab.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
"Plug 'nvim-lua/completion-nvim'
Plug 'mfussenegger/nvim-jdtls'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'maxbrunsfeld/vim-yankstack'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()



" vim-sneak


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


autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
autocmd FileType tex setl updatetime=1

let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 1
let g:indent_guides_enable_on_vim_startup = 1

" Nerd Tree options
let NERDTreeShowHidden=1  "  Always show dot files
let NERDTreeQuitOnOpen=1

""" MAPPINGS
let mapleader=','

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
" edit/save ideavimrc and load vimrc bindings
map <leader><leader>e :vsp $MYVIMRC<CR>
map <leader><leader>s :source $MYVIMRC<CR>
"map <leader><leader>e :vsp c:\Users\bpater\AppData\Local\nvim\init.vim<CR>
"map <leader><leader>s :source c:\Users\bpater\AppData\Local\nvim\init.vim<CR>

" Split window vertically or horizontally *and* switch to the new split!
map <leader>h :split<Bar>:wincmd j<CR>:wincmd =<CR>
map <leader>v :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>


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

  " See `:help vim.lsp.*` for documentation on any of the below functions
nnoremap gD <Cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap K <Cmd>lua vim.lsp.buf.hover()<CR>
nnoremap gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap gr <cmd>lua vim.lsp.buf.references()<CR>

nnoremap gh <cmd>lua vim.lsp.buf.outgoing_calls()<CR>

nnoremap <silent> gO <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> <space>o <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW  <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <space>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <space>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <space>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <space>d <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <space>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <space>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <space>e <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>'
nnoremap <space>q <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <space>ff <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <space>fr <cmd>lua vim.lsp.buf.range_formatting()<CR>

nnoremap <leader>sr <cmd>lua vim.lsp.buf.server_ready()<CR>
nnoremap <leader>jl <cmd>lua vim.lsp.util.jump_to_location()<CR>



" <Leader><Leader>f{char} to move to {char}
"map  <space><space>f <Plug>(easymotion-bd-f)
"nmap <space><space>f <Plug>(easymotion-overwin-f)
" Move to linecom
"map <space><space>l <Plug>(easymotion-bd-jk)
"nmap <space><space>l <Plug>(easymotion-overwin-line)
" Move to word
"map  <space><space>w <Plug>(easymotion-bd-w)
"nmap <space><space>w <Plug>(easymotion-overwin-w)

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

set completeopt=menuone,noinsert,noselect
"set cot=menuone,noinsert,noselect shm+=c
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_matching_smart_case = 1
let g:completion_trigger_on_delete = 1

" Telescope
map <Leader>r :Telescope oldfiles<CR>
map <leader>f :Telescope git_files<CR>
map <Leader>e :Telescope buffers<CR>
map <leader>t :Telescope live_grep<CR>;
map <leader>m :Telescope marks<CR>
map <space>f :Telescope current_buffer_fuzzy_find<CR>

map <leader>gc :Telescope git_commits<CR>
map <leader>gbc :Telescope git_bcomits<CR>
map <leader>gb :Telescope git_branches<CR>


"require'lspconfig'.jdtls.setup{ on_attach=require'completion'.on_attach } 
" Treeeseeter error
":lua << EOF
"   require'nvim-treesitter.configs'.setup {
"     ensure_installed = "maintained",
"     highlight = {
"       enable = true,
"       disable = { },
"     },
"   }
" EOF
lua local actions = require('telescope.actions') require('telescope').setup{ defaults = { mappings = { i = { ["<esc>"] = actions.close }, }, } }
lua require'nvim-treesitter.configs'.setup { ensure_installed = "maintained", highlight = { enable = true, }, }

" :lua << EOF
"   local on_attach = function(_, bufnr)
"     require('completion').on_attach()
"   end   
"     require'lspconfig'.jdtls.setup{ on_attach=on_attach, init_options = { jvm_args = {"-javaagent:/Users/phazo/.m2/repository/org/projectlombok/lombok/1.18.8/lombok-1.18.8.jar", "-Xbootclasspath/a:/Users/phazo/.m2/repository/org/projectlombok/lombok/1.18.8/lombok-1.18.8.jar"} } }     
"     require'lspconfig'.tsserver.setup{ on_attach=on_attach }
" EOF


:lua << EOF
    require'lspconfig'.jdtls.setup{ on_attach=on_attach, init_options = { jvm_args = {"-javaagent:/Users/phazo/.m2/repository/org/projectlombok/lombok/1.18.8/lombok-1.18.8.jar", "-Xbootclasspath/a:/Users/phazo/.m2/repository/org/projectlombok/lombok/1.18.8/lombok-1.18.8.jar"} } }     
    require'lspconfig'.tsserver.setup{ on_attach=on_attach }
EOF







"lua require'lspconfig'.jdtls.setup{  on_attach=require'completion'.on_attach } 
"lua require'lspconfig'.tsserver.setup{ on_attach=on_attach}
"lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
" if has('nvim-0.5')
"   augroup lsp
"     au!
"     au FileType java lua require('jdtls').start_or_attach({cmd = {"C:\Users\bpater\AppData\Local\nvim\java-run.bat"}})
"   augroup end
" endif


" WYEXPORTOWACCC
"  export JAR=/path/to/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.0.v20200915-1508.jar 
"  export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.9.11-9.fc33.x86_64/ 
"  export JDTLS_CONFIG=/path/to/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux 
"  
" export WORKSPACE=$HOME/workspace 
"  ``` 




:lua << EOF
-- Compe setup
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    nvim_lsp = true;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  else
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
EOF