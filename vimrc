set nocompatible
syntax on
set nomodeline

set encoding=utf8
set fileencoding=utf8
set termencoding=utf8

filetype on
filetype indent on
filetype plugin on

compiler ruby

"colorscheme torte
colorscheme desert

set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmatch
set nu
set ruler
set incsearch

map <F6> :,!date<CR>
map <F12> :!svn propset svn:keywords "Id" %<CR>

" PLUGINS
"
"   python autocomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete
"
"
"   surround.vim
"   see ~/.vim/plugin/surround.vim
" '#'
autocmd FileType ruby  let b:surround_35 = "#{\r}"
" '%'
autocmd FileType ruby  let b:surround_25 = "%{\r}"
" 'h'
autocmd FileType eruby let b:surround_104 = "<%= \r %>"
" 't'
autocmd FileType eruby let b:surround_116 = "<%=t \r %>"
"
"   matchit.vim
"   see ~/.vim/plugin/matchit.vim
"   also see ~/.vim/ftplugin/python_matchit.vim
"   also see ~/.vim/ftplugin/ruby-matchit.vim
"
"   repeat.vim
"   see ~/.vim/autoload/repeat.vim
"
"   snipMate.vim
"   see ~/.vim/plugin/snipmate.vim
"   also see ~/.vim/snippets/*.snippet
"
"   NERD_tree
"   see ~/.vim/plugin/NERD_tree.vim
map <c-n> :NERDTreeToggle<CR>
"
"   minibufexpl.vim
"   see ~/.vim/plugin/minibufexpl.vim
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
nmap <silent> <PageUp> :MBEbn<cr>
nmap <silent> <PageDown> :MBEbp<cr>
"
"   vim.ruby
"   your entire .vim/* is from vim.ruby!
"   rubyautocomplete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"
"   supertab.vim
"   see ~/.vim/supertab.vba
"   improve autocomplete menu color
highlight Pmenu ctermbg=LightGrey ctermfg=Black
"
"   vcscommand.vim
"   see :help vcscommand
"
"   rails.vim
"   see :help rails
"
"   JavaScript
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"
"     IndentAnything/
"     see :help IndentAnything
"     also see ~/.vim/indent/javascript.vim
"
"     jsbeautify
"     <leader>ff
"     see `/.vim/plugin/jsbeautify.vim
"
"     JSLint (runner)
"     see http://stackoverflow.com/questions/473478/vim-jslint, f3lix' answer
"     also see http://www.fleegix.org/articles/2008-09-06-jslint-in-vim-through-lynx, from matt
"     (dinna work that well, sadly)
"     also see /usr/local/bin/mylintrun.js
"              /usr/local/lib/jslint.js
"              /usr/local/share/js
set makeprg=cat\ %\ \\\|\ /usr/local/bin/js\ /usr/local/bin/mylintrun.js\ %
set errorformat=%f:%l:%c:%m
