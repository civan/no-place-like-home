syntax on

colorscheme deep-space
:set shell=/bin/zsh
:set number
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set mouse=a
":set runtimepath+=~/.vim/bundle/jshint2.vim/
:set laststatus=2
":set textwidth=80
:set directory=$HOME/.vim//
:set incsearch
:set ignorecase

"Jshint2 Config
let jshint2_read = 1
let jshint2_save = 1

"sass-lint config
let g:syntastic_sass_checkers=["sass_lint"]
let g:syntastic_scss_checkers=["sass_lint"]

"initiate Vundle
 let &runtimepath.=',$HOME/.vim/bundle/Vundle.vim'
 call vundle#begin()
 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 "start plugin defintion
 Plugin 'scrooloose/nerdtree'
 Plugin 'scrooloose/syntastic'
 Plugin 'gcorne/vim-sass-lint'
 Plugin 'Xuyuanp/nerdtree-git-plugin'
 Plugin 'Lokaltog/vim-powerline'
 Plugin 'heavenshell/vim-jsdoc'
 Plugin 'kien/ctrlp.vim'
 Plugin 'tpope/vim-fugitive'

"Plugin 'dracula/vim'

 " -- Web Development
 Plugin 'Shutnik/jshint2.vim'

 " end plugin definition
 call vundle#end()            " required for vundle

 " start NERDTree on start-up and focus active window
 autocmd VimEnter * NERDTree
 autocmd VimEnter * wincmd p

 " To close vim if the only windows open is nerdTree
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" nerdtree -git Config
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yaml', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('scss', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'magenta', 'none', '#ff00ff', '#151515')


" suntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers = ['gjslint']
"let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

