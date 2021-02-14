" File              : .vimrc
" Author: Yevhen Zhurakhovskyi <eugene.zhurakhovskiy@ab-soft.net>
" Date  : 28.09.2020
" Last Modified Date  : 28.09.2020 15:48:52
" Last Modified By: Yevhen Zhurakhovskyi <eugene.zhurakhovskiy@ab-soft.net>
set nocompatible              " be iMproved, required
filetype off                  " required


"--------------------------------------------------
" STRUCTURE
" Idea is to put plugin list right after Vundle
" separating plugin configuration into its own block.
" That allow you to focus on plugin list,
" categorize it and so on on the one hand.
" And you will be able to configure plugin separately
" on the other hand.
"
"
" TAGS
" You can type something like #someones_plugin
" near plugin and its configuration.
" It allows you to jump between those parts easily.
"--------------------------------------------------


"--------------------------------------------------
" Vundle
"--------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


set rtp+=/usr/local/opt/fzf
Plugin 'junegunn/fzf.vim'
" :call fzf#run({'sink': 'e'})

"--------------------------------------------------
" THEME
"--------------------------------------------------
" #altercation_vim_colors_solarized
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'


"--------------------------------------------------
" SNIPPETS
"--------------------------------------------------
" The ultimate snippet solution for Vim
" #sirver_ultisnips
Plugin 'SirVer/ultisnips'
" vim-snipmate default snippets (Previously snipmate-snippets)
Plugin 'honza/vim-snippets'

"Mustache template system for VIMScript
"Plugin 'tobyS/vmustache'

"--------------------------------------------------
" JavaScript
"--------------------------------------------------
" :JsDoc
Plugin 'heavenshell/vim-jsdoc'

" Overwrides too much of solarized theme
"Plugin 'pangloss/vim-javascript'

" Standalone JSDoc syntax.
Plugin 'othree/jsdoc-syntax.vim'
" Plugin ' heavenshell/vim-jsdoc'

" Yet Another JavaScript Syntax file for Vim
Plugin 'othree/yajs.vim'

" JavaScript Parameter Complete(JSPC) is a completion function for function parameters, such as event names, crypto algorithms, and common locales.
Plugin 'othree/jspc.vim'

" Syntax file for JavaScript libraries.
Plugin 'othree/javascript-libraries-syntax.vim'

" es.next.syntax.vim breks completion for native JS functions
"Plugin 'othree/es.next.syntax.vim'

" Syntax highlighting and indenting for JSX
" #mxw_vim_jsx
Plugin 'mxw/vim-jsx'


"--------------------------------------------------
" Microsoft/TypeScript
"--

" Syntax file for TypeScript libraries
" provides syntax files for highlighting .ts and .d.ts files.
" #leafgarland_typescript_vim
Plugin 'leafgarland/typescript-vim'

" provides more syntax highlighting and DOM keywords.
" Plugin 'HerringtonDarkholme/yats.vim'

" TypeScript Language Service Tool
" #quramy_tsuquyomi
Plugin 'Quramy/tsuquyomi'


"--------------------------------------------------
" Code Formatting
"--
Plugin 'prettier/vim-prettier'


"--------------------------------------------------
" PHP
"--
"PHP Documentor for VIM - Generates PHP docblocks
"Plugin 'tobyS/pdv'

"Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.)
"Plugin 'joonty/vdebug'


"--------------------------------------------------
" Misc
"--------------------------------------------------
" #scrooloose_nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'sickill/vim-pasta'
Plugin 'jakobwesthoff/whitespacetrail'
Plugin 'danro/rename.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Lokaltog/vim-easymotion'

" #valloric_youcompleteme
"Plugin 'Valloric/YouCompleteMe'
" #neoclide_coc
Plugin 'neoclide/coc.nvim'

" Git
" :Gblame
" :Gstatus
Plugin 'tpope/vim-fugitive'

Plugin 'mattn/webapi-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




"--------------------------------------------------
" Configs
"--------------------------------------------------
set encoding=utf-8
set laststatus=2

set tabstop=4
set shiftwidth=4

" folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"show tab, end of line, trail in pseudo-graphics
"usage:
"  :set [no]list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" PHP Generated Code Highlights (HTML & SQL)
let php_sql_query=1
let php_htmlInStrings=1



"--------------------------------------------------
" Plugin configs
"--------------------------------------------------


"--------------------------------------------------
" PDV (phpDocumentor for VIM)
"
"let g:pdv_template_dir = "/home/txc/.vim/templates"
"nnoremap <C-K> :call pdv#DocumentCurrentLine()<CR>
"vnoremap <C-K> :call pdv#DocumentCurrentLine()<CR>


"--------------------------------------------------
" #altercation_vim_colors_solarized
syntax enable
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
"set t_Co=256
"set t_Co=64
colorscheme solarized
set background=dark


"--------------------------------------------------
" #scrooloose_nerdtree
"Shift+F5, etc.
nmap <S-F5> :NERDTreeToggle<CR>
"nmap <S-F5> :NERDTree<CR>
"nmap <S-F6> :NERDTreeClose<CR>
"F8 key will toggle the Tagbar window from Tagbar plugin
nmap <S-F8> :TagbarToggle<CR>


"--------------------------------------------------
" WhitespaceTrail
"
"inoremap <CR> <CR><C-R>=whitespacetrail#RemoveTrailingWhitespace(-1)<CR>
"


"--------------------------------------------------
" #valloric_youcompleteme
" In case of issues with following substring 'The ycmd server SHUT DOWN'
" please do followign commands:
" # cd ~/.vim/bundle/YouCompleteMe
" # ./install.py

" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" TypeScript completion for YouCompleteMe
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']


"--------------------------------------------------
" #sirver_ultisnips
"
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'txc-snippets']


"--------------------------------------------------
" #mxw_vim_jsx
" If you use JSX syntax in .js files, which is now becoming standard
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"--------------------------------------------------
" #quramy_tsuquyomi
"let g:tsuquyomi_disable_quickfix = 1

"--------------------------------------------------
" #neoclide_coc
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=900

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"--------------------------------------------------
" :JsDocFormat for entire file
nmap <silent> <C-l> <Plug>(jsdoc)


"--------------------------------------------------
" #leafgarland_typescript_vim
"let g:typescript_indent_disable = 1
":make
