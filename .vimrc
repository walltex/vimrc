set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"--------------------------------------------------
" THEME
"--------------------------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'

"--------------------------------------------------
" SNIPPETS
"--------------------------------------------------
" The ultimate snippet solution for Vim
Plugin 'SirVer/ultisnips'
" vim-snipmate default snippets (Previously snipmate-snippets)
Plugin 'honza/vim-snippets'

"Mustache template system for VIMScript
"Plugin 'tobyS/vmustache'

"--------------------------------------------------
" JavaScript
"--------------------------------------------------
" Overwrides too much of solarized theme
"Plugin 'pangloss/vim-javascript'

" Standalone JSDoc syntax.
Plugin 'othree/jsdoc-syntax.vim'

" Yet Another JavaScript Syntax file for Vim
Plugin 'othree/yajs.vim'

" JavaScript Parameter Complete(JSPC) is a completion function for function parameters, such as event names, crypto algorithms, and common locales.
Plugin 'othree/jspc.vim'

" Syntax file for JavaScript libraries.
Plugin 'othree/javascript-libraries-syntax.vim'

" es.next.syntax.vim breks completion for native JS functions
"Plugin 'othree/es.next.syntax.vim'

" Syntax highlighting and indenting for JSX
Plugin 'mxw/vim-jsx'

"--------------------------------------------------
" @see Microsoft/TypeScript

" Syntax file for TypeScript libraries
" provides syntax files for highlighting .ts and .d.ts files.
Plugin 'leafgarland/typescript-vim'

" provides more syntax highlighting and DOM keywords.
" Plugin 'HerringtonDarkholme/yats.vim'

" TypeScript Language Service Tool
Plugin 'Quramy/tsuquyomi'


"--------------------------------------------------
" PHP
"--------------------------------------------------
"PHP Documentor for VIM - Generates PHP docblocks
"Plugin 'tobyS/pdv'

"Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.)
"Plugin 'joonty/vdebug'

"--------------------------------------------------
" Misc
"--------------------------------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'sickill/vim-pasta'
Plugin 'jakobwesthoff/whitespacetrail'
Plugin 'danro/rename.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Lokaltog/vim-easymotion'

Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-fugitive'

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
" VIM-COLORS-SOLARIZED
"
syntax enable
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
"set t_Co=256
"set t_Co=64
colorscheme solarized
set background=dark

"--------------------------------------------------
" NERDTree
"
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
" YouCompleteMe
"

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
" UltiSnips
"
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-s-e>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"--------------------------------------------------
" VIM-JSX
" If you use JSX syntax in .js files, which is now becoming standard
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

