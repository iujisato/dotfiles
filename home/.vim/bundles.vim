" vim: set foldlevel=0 foldmethod=marker:

if has('vim_starting')
  call plug#begin('~/.vim/bundle')
endif

" Libs {{{
  Plug 'tpope/vim-repeat'
  Plug 'vim-scripts/l9'
  Plug 'kana/vim-textobj-user'
" }}}

" Color Schemes {{{
  Plug 'kristijanhusak/vim-hybrid-material'
" }}}

" Completions and Snippets {{{
  Plug 'neitanod/vim-clevertab'
  Plug 'honza/vim-snippets'
  Plug 'jiangmiao/auto-pairs'
  Plug 'sirver/ultisnips'
  Plug 'tpope/vim-endwise', {'for': ['ruby', 'sh', 'zsh', 'vim', 'c', 'cpp']}
  Plug 'valloric/youcompleteme', {
          \ 'do': './install.py --tern-completer'
          \ }
" }}}

" File and Search {{{
  Plug 'scrooloose/nerdtree'
  Plug 'dyng/ctrlsf.vim'
  Plug 'henrik/vim-indexed-search'
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
  Plug 'junegunn/fzf.vim'
" }}}

" General Programming {{{
  Plug 'andrewradev/splitjoin.vim', {'for': [
        \ 'ruby', 'eruby', 'coffee', 'python',
        \ 'javascript', 'html', 'xml', 'css',
        \ 'scss', 'less', 'yaml', 'vim' ]}
  Plug 'godlygeek/tabular'
  Plug 'janko-m/vim-test'
  Plug 'sjl/gundo.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tommcdo/vim-exchange'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-rsi'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'vim-scripts/LargeFile'
  Plug 'vim-scripts/YankRing.vim'
  Plug 'w0rp/ale'
" }}}

" Integrations {{{
  Plug 'airblade/vim-gitgutter'
  Plug 'christoomey/vim-tmux-runner'
  Plug 'tpope/vim-fugitive'
" }}}

" Language Specific {{{

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
  Plug 'othree/html5.vim', {'for': 'html'}
  Plug 'rstacruz/sparkup', {'for': ['html', 'xml']}
  Plug 'valloric/MatchTagAlways', {'for': ['html', 'xml']}
" }}}

" Markdown {{{
  Plug 'suan/vim-instant-markdown', {'for': 'markdown', 'do': 'npm install -g instant-markdown-d'}
" }}}

" JavaScript {{{
  Plug 'cartolari/JavaScript-Indent', {'for': ['javascript', 'html']}
  Plug 'drslump/vim-syntax-js', {'for': ['javascript', 'html', 'haml']}
  Plug 'marijnh/tern_for_vim', {'for': ['html', 'javascript'], 'do': 'npm install'}
  Plug 'mxw/vim-jsx'
" }}}

" Ruby {{{
  Plug 'ecomba/vim-ruby-refactoring'
  Plug 'nelstrom/vim-textobj-rubyblock', {'for': 'ruby'}
  Plug 'sunaku/vim-ruby-minitest'
  Plug 'tpope/vim-rails', {'for': ['ruby', 'eruby', 'yaml', 'haml', 'javascript', 'coffee', 'sass', 'scss']}
  Plug 'vim-ruby/vim-ruby', {'for': ['ruby', 'eruby']}
" }}}

" Typescript {{{
  Plug 'leafgarland/typescript-vim'
" }}}

" Tmux {{{
  Plug 'keithbsmiley/tmux.vim', {'for': 'tmux'}
" }}}

" Yaml {{{
  Plug 'ingydotnet/yaml-vim', {'for': 'yaml'}
" }}}

" }}}

" Syntax and Indentation {{{
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'michaeljsmith/vim-indent-object'
" }}}

" UI {{{
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'itchyny/lightline.vim'
  Plug 'konfekt/fastfold'
" }}}

call plug#end()
