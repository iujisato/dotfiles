" vim: set foldlevel=0 foldmethod=marker spell:

if has('vim_starting')
  call plug#begin('~/.vim/bundle')
endif

" Libs {{{
  Plug 'kana/vim-textobj-user'
  Plug 'tpope/vim-repeat'
" }}}

" Color Schemes {{{
  Plug 'cartolari/vim-niji', {'for': ['clojure', 'lisp', 'scheme']}
  Plug 'vim-scripts/csapprox'
  Plug 'trapd00r/neverland-vim-theme'
  Plug 'sjl/badwolf'
  Plug 'reedes/vim-colors-pencil'
" }}}

" Completions and Snippets {{{
  Plug 'cartolari/vim-clevertab', {'dir': '~/code/vim-clevertab/'}
  Plug 'honza/vim-snippets'
  Plug 'jiangmiao/auto-pairs'
  Plug 'sirver/ultisnips'
  Plug 'tpope/vim-endwise', {'for': ['ruby', 'sh', 'zsh', 'vim', 'c', 'cpp']}
" }}}

" File and Search {{{
  Plug 'dyng/ctrlsf.vim'
  Plug 'henrik/vim-indexed-search'
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': 'yes \| ./install'}
" }}}

" General Programming {{{
  Plug 'andrewradev/splitjoin.vim', {'for': [
        \ 'ruby', 'eruby', 'coffee', 'python',
        \ 'javascript', 'html', 'xml', 'css',
        \ 'scss', 'less', 'yaml', 'vim' ]}
  Plug 'andrewradev/switch.vim'
  Plug 'benekastah/neomake'
  Plug 'embear/vim-localvimrc'
  Plug 'godlygeek/tabular'
  Plug 'janko-m/vim-test'
  Plug 'mbbill/undotree'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tommcdo/vim-exchange'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'vim-scripts/YankRing.vim'
" }}}

" Integrations {{{
  Plug 'christoomey/vim-tmux-runner'
  Plug 'kassio/neoterm'
  Plug 'tpope/vim-fugitive'
" }}}

" Language Specific {{{

" ASCII {{{
  Plug 'AnsiEsc.vim', {'on': 'AnsiEsc'}
" }}}

" Clojure {{{
  Plug 'guns/vim-sexp', {'for': ['clojure', 'lisp', 'scheme']}
  Plug 'tpope/vim-fireplace', {'for': 'clojure'}
  Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['clojure', 'lisp', 'scheme']}
" }}}

" Coffeescript {{{
  Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}
" }}}

" CSS {{{
  Plug 'gorodinskiy/vim-coloresque'
" }}}

" Dockerfile {{{
  Plug 'ekalinin/Dockerfile.vim', {'for': 'Dockerfile'}
" }}}

" HTML {{{
  Plug 'amirh/HTML-AutoCloseTag'
  Plug 'othree/html5.vim', {'for': 'html'}
  Plug 'rstacruz/sparkup', {'for': ['html', 'xml']}
  Plug 'Valloric/MatchTagAlways', {'for': ['html', 'xml']}
" }}}

" Markdown {{{
  Plug 'suan/vim-instant-markdown', {'for': 'markdown', 'do': 'npm install -g instant-markdown-d'}
" }}}

" JavaScript {{{
  Plug 'drslump/vim-syntax-js', {'for': ['javascript', 'html', 'haml']}
  Plug 'marijnh/tern_for_vim', {'for': ['html', 'javascript'], 'do': 'npm install'}
  Plug 'mxw/vim-jsx'
  Plug 'vim-scripts/JavaScript-Indent', {'for': ['javascript', 'html', 'haml']}
" }}}

" Ruby {{{
  Plug 'ecomba/vim-ruby-refactoring'
  Plug 'nelstrom/vim-textobj-rubyblock', {'for': 'ruby'}
  Plug 'tpope/vim-rails', {'for': ['ruby', 'eruby', 'yaml', 'haml', 'javascript', 'coffee', 'sass', 'scss']}
  Plug 'vim-ruby/vim-ruby', {'for': ['ruby', 'eruby']}
" }}}

" Tmux {{{
  Plug 'keithbsmiley/tmux.vim', {'for': 'tmux'}
  Plug 'wellle/tmux-complete.vim'
" }}}

" Yaml {{{
  Plug 'ingydotnet/yaml-vim', {'for': 'yaml'}
" }}}

" }}}

" Syntax and Indentation {{{
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'editorconfig/editorconfig-vim'
" }}}

" UI {{{
  Plug 'ap/vim-buftabline'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'itchyny/lightline.vim'
  Plug 'konfekt/fastfold'
" }}}

call plug#end()
