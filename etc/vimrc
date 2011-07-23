set nocompatible
syntax on
set nomodeline

set encoding=utf8
set fileencoding=utf8
set termencoding=utf8

compiler ruby

colorscheme zenburn

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
set hidden

"   code folding
set foldmethod=manual
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

"   unimpaired.vim
"     bubble single lines
nmap <s-o> [e
nmap <s-p> ]e
"     bubble multiple lines
vmap <s-o> [egv
vmap <s-p> ]egv

filetype plugin indent on

if has("autocmd")
    " Automagically source your .vimrc upon save
    autocmd BufWritePost .vimrc source $MYVIMRC

    "   python autocomplete
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    "   JavaScript
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    "   JSLint (runner)
    "     see http://stackoverflow.com/questions/473478/vim-jslint, f3lix' answer
    "     also see http://www.fleegix.org/articles/2008-09-06-jslint-in-vim-through-lynx, from matt
    "     (dinna work that well, sadly)
    "     depends on local installation of JavaScript engine (spidermonkey works)
    "     also see ~/.vim/bin/mylintrun.js
    "              ~/.vim/lib/jslint.js
    "              /usr/local/bin/js
    autocmd FileType javascript set makeprg=cat\ %\ \\\|\ /usr/local/bin/js\ $HOME/.vim/bin/mylintrun.js\ %\ $HOME\
    autocmd FileType javascript set errorformat=%f:%l:%c:%m
    autocmd FileType javascript set shellpipe=2>/dev/null\|\ tee
    "   vim.ruby
    "   your entire .vim/* is from vim.ruby!
    "   rubyautocomplete
    autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
    autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
    autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
    autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
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
endif

" MAPPINGS
"   <F6> outputs date into file at cursor position
map <F6> :,!date<CR>
"   <F12> sets the svn "Id" keyword on the file in the buffer
map <F12> :!svn propset svn:keywords "Id" %<CR>
"
"   Taglist/CTags
"   see ~/.vim/plugin/taglist.vim
"   also see http://vim-taglist.sourceforge.net/manual.html
map <c-t> :TlistToggle<CR>
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


" PLUGINS
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
"     IndentAnything/
"     see :help IndentAnything
"     also see ~/.vim/indent/javascript.vim
"
"     jsbeautify
"     <leader>ff
"     see `/.vim/plugin/jsbeautify.vim
