" Author: Mike Hartington
" Modified by: Rodrigo Broggi
" repo  : https://github.com/rbroggi/dotFiles/
"

" Setup dein  ---------------------------------------------------------------{{{
  if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
    call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
    call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
  endif

  set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
  call dein#begin(expand('~/.config/nvim'))
  call dein#add('Shougo/dein.vim')
  call dein#add('haya14busa/dein-command.vim')
  call dein#add('Yggdroot/indentLine')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('majutsushi/tagbar')
  call dein#add('christoomey/vim-tmux-navigator')
" syntax
"  call dein#add('mboughaba/i3config.vim')
"  call dein#add('elzr/vim-json')
"  call dein#add('rust-lang/rust.vim')
"  call dein#add('racer-rust/vim-racer')
  " call dein#add('othree/html5.vim')
  " call dein#add('othree/yajs.vim')
  " call dein#add('mileszs/ack.vim')
  " call dein#add('maxmellon/vim-jsx-pretty')
  " call dein#add('othree/es.next.syntax.vim')
  " call dein#add('othree/jsdoc-syntax.vim')
  " call dein#add('heavenshell/vim-jsdoc')
  " call dein#add('HerringtonDarkholme/yats.vim')
  " call dein#add('ianks/vim-tsx')
  " call dein#add('posva/vim-vue')
  " call dein#add('skwp/vim-html-escape')
  " call dein#add('hail2u/vim-css3-syntax')
  " call dein#add('othree/csscomplete.vim')
  " call dein#add('w0rp/ale')
  " call dein#add('Xuyuanp/nerdtree-git-plugin')
  " call dein#add('tpope/vim-rhubarb')
  " call dein#add('dhruvasagar/vim-table-mode')
  " call dein#add('chemzqm/vim-easygit')
  " call dein#add('jreybert/vimagit', {'on_cmd': ['Magit', 'MagitOnly']})
  " call dein#add('rhysd/committia.vim')
  " call dein#add('junegunn/gv.vim')
  " call dein#add('lambdalisue/gina.vim')
  " call dein#add('eugen0329/vim-esearch')
  " call dein#add('AndrewRadev/splitjoin.vim')
  " call dein#add('tpope/vim-repeat')
  " call dein#add('tpope/vim-unimpaired')
  " call dein#add('neomake/neomake')
  " call dein#local('~/GitHub/', {}, ['neomake'])
  " call dein#add('editorconfig/editorconfig-vim')
  " call dein#add('AndrewRadev/switch.vim')
  " call dein#add('scrooloose/nerdcommenter')
  " call dein#add('mattn/emmet-vim')
  " call dein#add('sbdchd/neoformat')
  " call dein#add('mbbill/undotree')
  " call dein#add('Shougo/deoplete.nvim')
  " call dein#add('roxma/nvim-completion-manager')
  " call dein#add('Shougo/deol.nvim')
  " call dein#add('Shougo/denite.nvim')
  " call dein#add('nixprime/cpsm', {'build': 'PY3=ON ./install.sh'})
  " call dein#add('Shougo/neomru.vim')
  " call dein#add('chemzqm/redismru.vim', {'build':'npm install'})
  " call dein#add('chemzqm/denite-git')
  " call dein#add('chemzqm/denite-extra')
  " call dein#add('chemzqm/denite-git')
  " call dein#add('pocari/vim-denite-gists')
  " call dein#add('neoclide/todoapp.vim')
  " call dein#add('artur-shaik/vim-javacomplete2')
  " call dein#add('Shougo/neco-vim')
  " call dein#add('Shougo/neoinclude.vim')
  " call dein#add('ujihisa/neco-look')
  " call dein#add('davidhalter/jedi-vim', {'on_ft': 'python'})
  " call dein#add('zchee/deoplete-jedi')
  " call dein#add('zchee/deoplete-go', {'build': 'make'})
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')
  " call dein#add('Shougo/echodoc.vim')
  " call dein#add('honza/vim-snippets')
  " call dein#add('mhinz/vim-sayonara')
  " call dein#add('mattn/webapi-vim')
  " call dein#add('mattn/gist-vim')
  " call dein#add('vim-scripts/SyntaxRange')
  " call dein#add('MartinLafreniere/vim-PairTools')
  " call dein#add('Shougo/vimfiler.vim')
  call dein#add('Shougo/unite.vim')
  " call dein#add('junegunn/gv.vim')
  " call dein#local('~/GitHub', {},['vim-folds'])
  " call dein#add('neovim/node-host', {'build': 'npm install -g neovim'})
  " call dein#add('sjl/vitality.vim')
  " call dein#add('sjl/gundo.vim')
  " call dein#add('drzel/vim-line-no-indicator')
  " call dein#add('Quramy/vison')
  call dein#add('ap/vim-css-color')
  call dein#add('nelstrom/vim-markdown-folding', {'on_ft': 'markdown'})
  call dein#add('rhysd/vim-grammarous')
  call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('itmammoth/doorboy.vim')
  " call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'})
  call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-surround')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('sgeb/vim-diff-fold')
  call dein#add('airblade/vim-rooter')
  call dein#add('scrooloose/nerdtree')
  call dein#local('~/GitHub', {}, ['nerdtree-git-plugin'])
  call dein#add('tomtom/tcomment_vim')
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('fatih/vim-go')
  call dein#add('junegunn/limelight.vim')
  call dein#add('Konfekt/FastFold')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('mhartington/oceanic-next')
  call dein#add('vim-airline/vim-airline')
  call dein#local('~/GitHub', {},['nvim-typescript'])
  call dein#add('junegunn/goyo.vim')
  call dein#add('amix/vim-zenroom2')
  call dein#local('~/GitHub', {}, ['ionic-snippets'])
  " call dein#add('euclio/vim-markdown-composer', {'build': 'cargo build --release'})
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('folke/zen-mode.nvim')

  " pluggin for LSP
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  if dein#check_install()
    call dein#install()
    let pluginsExist=1
  endif

  call dein#end()
  filetype plugin indent on
" }}}

" System Settings  ----------------------------------------------------------{{{
" Neovim Settings
  set termguicolors
  set mouse=a
  set relativenumber
  set number
  " let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
  " For mac
  " set clipboard+=unnamedplus
  set clipboard=unnamedplus
  set pastetoggle=<f6>
  set nopaste
  autocmd BufWritePre * %s/\s\+$//e
  set noshowmode
  set noswapfile
  filetype on
  set numberwidth=1
  set tabstop=2 shiftwidth=2 expandtab
  set conceallevel=0
  set virtualedit=
  set wildmenu
  set laststatus=2
  set wrap linebreak nolist
  set wildmode=full
  set autoread
  set noautochdir
  set updatetime=500
  set fillchars+=vert:│
  let mapleader = " "
  set undofile
  set undodir="$HOME/.vim/undodir"
  set incsearch
" Remember cursor position between vim sessions
 autocmd BufReadPost *
             \ if line("'\"") > 0 && line ("'\"") <= line("$") |
             \   exe "normal! g'\"" |
             \ endif
             " center buffer around cursor when opening files
  autocmd BufRead * normal zz
  " set updatetime=500
  set complete=.,w,b,u,t,k
  autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
  autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
  set formatoptions+=t
  set inccommand=nosplit
  set shortmess=atIc
  set isfname-==
  set spell
  let g:indentLine_color_gui = '#343d46'

  " let g:indentLine_char="⎸"
" }}}

" System mappings  ----------------------------------------------------------{{{

" No need for ex mode
  nnoremap Q <nop>
  vnoremap // y/<C-R>"<CR>
" exit insert, dd line, enter insert
  inoremap <c-d> <esc>ddi
" Navigate between display lines
  nnoremap <silent><expr> k      v:count == 0 ? 'gk' : 'k'
  nnoremap <silent><expr> j      v:count == 0 ? 'gj' : 'j'
  nnoremap <silent><expr> <Up>   v:count == 0 ? 'gk' : 'k'
  nnoremap <silent><expr> <Down> v:count == 0 ? 'gj' : 'j'

" copy current files path to clipboard
  nmap cp :let @+= expand("%") <cr>
" Neovim terminal mapping
" terminal 'normal mode'
  tmap <esc> <c-\><c-n><esc><cr>
" exit insert, dd line, enter insert
  inoremap <c-d> <esc>ddi
  noremap H ^
  noremap L g_
" if you do have a plugin that needs ;, you can just swap the mapping

" Copy to osx clipboard
  vnoremap y "*y<CR>
  noremap Y y$
  vnoremap y myy`y
  vnoremap Y myY`y

" Multicursor next match, previous match and skip match
  let g:multi_cursor_next_key='<C-n>'
  let g:multi_cursor_prev_key='<C-p>'
  let g:multi_cursor_skip_key='<C-x>'
  " let g:multi_cursor_quit_key='<Esc>'

" Align blocks of text and keep them selected
  vmap < <gv
  vmap > >gv
  nnoremap <leader>d "_d
  vnoremap <leader>d "_d
  vnoremap <c-/> :TComment<cr>
  nnoremap <silent> <esc> :noh<cr>
  nnoremap <leader>e :call <SID>SynStack()<CR>
  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc

  function! s:PlaceholderImgTag(size)
    let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
    let [width,height] = split(a:size, 'x')
    execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
    endfunction
  command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)
  vnoremap <leader>ga <Plug>(EasyAlign)
"}}}"

" Themes, Commands, etc  ----------------------------------------------------{{{
  syntax on
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
  " let g:oceanic_next_highlight_current_line =1
  " set cursorline
  colorscheme OceanicNext
  " colorscheme one
  " set background=dark
"}}}

" Code formatting -----------------------------------------------------------{{{

" ,f to format code, requires formatters: read the docs
  noremap <silent> <leader>f :Neoformat<CR>
  let g:standard_prettier_settings = {
              \ 'exe': 'prettier',
              \ 'args': ['--stdin', '--stdin-filepath', '%:p', '--single-quote'],
              \ 'stdin': 1,
              \ }
" }}}

" Fold, gets it's own section  ----------------------------------------------{{{

  function! MyFoldText() " {{{
      let line = getline(v:foldstart)
      let nucolwidth = &fdc + &number * &numberwidth
      let windowwidth = winwidth(0) - nucolwidth - 3
      let foldedlinecount = v:foldend - v:foldstart

      " expand tabs into spaces
      let onetab = strpart('          ', 0, &tabstop)
      let line = substitute(line, '\t', onetab, 'g')

      let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines   ')
      let fillcharcount = windowwidth - len(line)
      " return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines'
      return line . '⋯'. repeat(" ",fillcharcount)
  endfunction " }}}

  set foldtext=MyFoldText()

  autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
  autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

  " autocmd FileType vim setlocal fdc=1
  set foldlevel=99

  " Space to toggle folds.
  nnoremap <Space> za
  vnoremap <Space> za
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0

  autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99

  autocmd FileType css,scss,json setlocal foldmethod=marker
  autocmd FileType css,scss,json setlocal foldmarker={,}

  autocmd FileType coffee setl foldmethod=indent
  let g:xml_syntax_folding = 1
  autocmd FileType xml setl foldmethod=syntax

  autocmd FileType html setl foldmethod=expr
  autocmd FileType html setl foldexpr=HTMLFolds()

  autocmd FileType javascript,typescript,json setl foldmethod=syntax

" }}}

" Git -----------------------------------------------------------------------{{{

  set signcolumn=yes
  let g:conflict_marker_enable_mappings = 0
  let g:gitgutter_sign_added = '│'
  let g:gitgutter_sign_modified = '│'
  let g:gitgutter_sign_removed = '│'
  let g:gitgutter_sign_removed_first_line = '│'
  let g:gitgutter_sign_modified_removed = '│'
" }}}

" NERDTree ------------------------------------------------------------------{{{
  let g:vimfiler_ignore_pattern = ""
  map <A-1> :NERDTreeToggle<CR>
  map <A-2> :NERDTreeFind<CR>

  augroup ntinit
    autocmd FileType nerdtree call s:nerdtreeinit()
  augroup END
  function! s:nerdtreeinit() abort
      nunmap <buffer> K
      nunmap <buffer> J
  endf
  let NERDTreeShowHidden=1
  let g:NERDTreeWinSize=45
  let NERDTreeMinimalUI=1
  let NERDTreeHijackNetrw=1
  let NERDTreeCascadeSingleChildDir=0
  let NERDTreeCascadeOpenSingleChildDir=0
  let g:NERDTreeAutoDeleteBuffer=1
  let g:NERDTreeShowIgnoredStatus = 0
  let g:NERDTreeChDirMode=0
	let g:NERDTreeDirArrowExpandable = ''
	let g:NERDTreeDirArrowCollapsible = ''
"}}}

" Nvim terminal -------------------------------------------------------------{{{

  au BufEnter * if &buftype == 'terminal' | :startinsert | endif
  autocmd BufEnter term://* startinsert
  autocmd TermOpen * set bufhidden=hide

" }}}

" Vim-Devicons -------------------------------------------------------------{{{

  let g:NERDTreeGitStatusNodeColorization = 1
  " 
  let g:webdevicons_enable_denite = 0
  " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
  let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
  let g:WebDevIconsOS = 'Darwin'
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''

" }}}

" fzf --------------------------------------------------------------------{{{
"
  nnoremap <silent> <Leader>C        :Colors<CR>
  nnoremap <silent> <Leader><Enter>  :Buffers<CR>
  nnoremap <silent> <C-A> :Commands<CR>
  function! s:find_git_root()
    let git_dir = system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
    if git_dir != ''
        execute 'GFiles' git_dir
    else
        execute 'Files'
    endif
  endfunction

  " nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
  command! ProjectFiles execute s:find_git_root()
  nnoremap <silent> <Leader><Leader> :ProjectFiles<CR>
  map <C-F> :Ag<CR>

"}}}

" Navigate between vim buffers and tmux panels ------------------------------{{{

  let g:tmux_navigator_no_mappings = 1
  nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
  nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
  nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
  nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
  nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>
  tmap <C-j> <C-\><C-n>:TmuxNavigateDown<cr>
  tmap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
  tmap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
  tmap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
  tmap <C-;> <C-\><C-n>:TmuxNavigatePrevious<cr>

"}}}

" vim-airline ---------------------------------------------------------------{{{

  let g:webdevicons_enable_airline_statusline = 0
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#mike#enabled = 1
  set hidden
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline_powerline_fonts = 1
  let g:airline_symbols.branch = ''
  let g:airline_theme='oceanicnext'
  cnoreabbrev <silent> <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
  tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>
  nmap <leader>, :bnext<CR>
  tmap <leader>, <C-\><C-n>:bnext<cr>
  nmap <leader>. :bprevious<CR>
  tmap <leader>. <C-\><C-n>:bprevious<CR>
  tmap <leader>1  <C-\><C-n><Plug>AirlineSelectTab1
  tmap <leader>2  <C-\><C-n><Plug>AirlineSelectTab2
  tmap <leader>3  <C-\><C-n><Plug>AirlineSelectTab3
  tmap <leader>4  <C-\><C-n><Plug>AirlineSelectTab4
  tmap <leader>5  <C-\><C-n><Plug>AirlineSelectTab5
  tmap <leader>6  <C-\><C-n><Plug>AirlineSelectTab6
  tmap <leader>7  <C-\><C-n><Plug>AirlineSelectTab7
  tmap <leader>8  <C-\><C-n><Plug>AirlineSelectTab8
  tmap <leader>9  <C-\><C-n><Plug>AirlineSelectTab9
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
  let g:airline#extensions#branch#format = 0
  let g:airline_detect_spelllang=0
  let g:airline_detect_spell=0
  let g:airline#extensions#hunks#enabled = 0
  let g:airline#extensions#wordcount#enabled = 0
  let g:airline#extensions#whitespace#enabled = 0
  " let g:airline_section_c = '%f%m'
  " let g:airline_section_x = ''
  let g:airline_section_y = ''
  " let g:airline_section_z = '%l:%v'
  " let g:airline_section_z = '%{LineNoIndicator()} :%2c'
  " let g:line_no_indicator_chars = [' ', '▁', '▂', '▃', '▄', '▅', '▆', '▇', '█']
  let g:line_no_indicator_chars = ['⎺', '⎻', '⎼', '⎽', '_']
  let g:airline_mode_map = {
        \ 'n'  : '',
        \ 'i' : '',
        \ 'R' : '',
        \ 'v' : '',
        \ 'V' : '',
        \ 'c' : '',
        \ 's' : '',
        \ 'S' : '',
        \ ''  : '',
        \ 't' : '',
        \}
  let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '0 ',
        \ '1': '1 ',
        \ '2': '2 ',
        \ '3': '3 ',
        \ '4': '4 ',
        \ '5': '5 ',
        \ '6': '6 ',
        \ '7': '7 ',
        \ '8': '8 ',
        \ '9': '9 ',
        \}

"}}}

" MultiCursor ---------------------------------------------------------------{{{

  let g:multi_cursor_exit_from_visual_mode=0
  let g:multi_cursor_exit_from_insert_mode=0
"}}}

" Javascript ----------------------------------------------------------------{{{

  " let g:tigris#enabled = 1
  " let $NVIM_NODE_LOG_FILE='nvim-node.log'
  " let $NVIM_NODE_HOST_DEBUG=1
  let g:neoformat_javascript_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_javascript = ['prettier']


  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:jsx_ext_required = 1
  let g:jsdoc_allow_input_prompt = 1
  let g:jsdoc_input_description = 1
  let g:jsdoc_return=0
  let g:jsdoc_return_type=0
  let g:vim_json_syntax_conceal = 0
  let g:tern#command = ['tern']
  let g:tern#arguments = ['--persistent']
  let g:tern_map_keys=1
  " autocmd FileType typescript setl omnifunc=TSComplete
  " let g:nvim_typescript#signature_complete=1
  let g:nvim_typescript#max_completion_detail=100
  let g:nvim_typescript#completion_mark=''
  " let g:nvim_typescript#default_mappings=1
  " let g:nvim_typescript#type_info_on_hold=1
  let g:nvim_typescript#javascript_support=1
  let g:nvim_typescript#vue_support=1
  " let g:ale_linters = {
  " \   'typescript': ['tsserver', 'tslint'],
  " \}

  map <silent> <leader>gd :TSDoc <cr>
  map <silent> <leader>gt :TSType <cr>
  map <silent> <leader>@ :Denite -buffer-name=TSDocumentSymbol TSDocumentSymbol <cr>
  map <silent> <leader># :Denite -buffer-name=TSWorkspaceSymbol TSWorkspaceSymbol <cr>

  " let g:neomake_typescript_enabled_makers = ['tsc', 'tslint']
  let g:neoformat_typescript_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_typescript = ['prettier']

  " let g:neomake_typescript_enabled_makers = ['nvim_ts']
  let g:nvim_typescript#kind_symbols = {
      \ 'keyword': 'keyword',
      \ 'class': '',
      \ 'interface': '',
      \ 'script': 'script',
      \ 'module': '',
      \ 'local class': 'local class',
      \ 'type': '',
      \ 'enum': '',
      \ 'enum member': '',
      \ 'alias': '',
      \ 'type parameter': 'type param',
      \ 'primitive type': 'primitive type',
      \ 'var': '',
      \ 'local var': '',
      \ 'property': '',
      \ 'let': '',
      \ 'const': '',
      \ 'label': 'label',
      \ 'parameter': 'param',
      \ 'index': 'index',
      \ 'function': '',
      \ 'local function': 'local function',
      \ 'method': '',
      \ 'getter': '',
      \ 'setter': '',
      \ 'call': 'call',
      \ 'constructor': '',
      \}
" }}}

" Java ----------------------------------------------------------------------{{{

  autocmd FileType java setlocal omnifunc=javacomplete#Complete
  " let g:deoplete#sources#clang#libclang_path="/usr/local/Cellar/llvm/HEAD-74479e8/lib/libclang.dylib"
  " let g:deoplete#sources#clang#clang_header="/usr/bin/clang"
"}}}

" HTML ----------------------------------------------------------------------{{{

  let g:neomake_html_enabled_makers = []
  let g:neoformat_enabled_html = ['htmlbeautify']

" }}}

" Go ------------------------------------------------------------------------{{{

  " let g:deoplete#sources#go#gocode_binary = '/home/rbroggi/go/gobinaries/bin/gocode'

  " Go syntax highlighting
  let g:go_highlight_fields = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_function_calls = 1
  let g:go_highlight_extra_types = 1
  let g:go_highlight_operators = 1

  " Auto formatting and importing
  let g:go_fmt_autosave = 1
  let g:go_fmt_command = "goimports"

  " Status line types/signatures
  let g:go_auto_type_info = 1

  " Run :GoBuild or :GoTestCompile based on the go file
  function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
      call go#test#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
      call go#cmd#Build(0)
    endif
  endfunction

  " automatic autocomplete when '.' pressed
  au filetype go inoremap <buffer> . .<C-x><C-o>


"}}}

" CSS -----------------------------------------------------------------------{{{

  let g:neoformat_scss_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_scss = ['prettier']
  let g:neomake_scss_enabled_makers = ['scsslint']

"}}}

" Lua -----------------------------------------------------------------------{{{

"}}}

" Python --------------------------------------------------------------------{{{


  let g:python_host_prog = '/usr/bin/python2'
  let g:python3_host_prog = '/usr/bin/python3'
  let $NVIM_PYTHON_LOG_FILE='/home/rbroggi/nvim-python.log'
  let g:jedi#auto_vim_configuration = 0
  let g:jedi#documentation_command = "<leader>k"
  let g:jedi#completions_enabled = 0
" }}}

" Rust ----------------------------------------------------------------------{{{
  let g:racer_cmd = '/Users/mhartington/.cargo/bin/racer'
  " let g:racer_experimental_completer = 1

"}}}

" tmux navigator ----------------------------------------------------------------------{{{
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-H> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-J> :TmuxNavigateDown<cr>
nnoremap <silent> <M-K> :TmuxNavigateUp<cr>
nnoremap <silent> <M-L> :TmuxNavigateRight<cr>
nnoremap <silent> <M-\> :TmuxNavigatePrevious<cr>
"}}}

let g:rooter_patterns = ['.git']

let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }



