# No place like $HOME setup

This repo adds a git repo for home to share same config accross multiples
machines.

[Vundle](https://github.com/VundleVim/Vundle.vim) Plugins:

* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
* [scrooloose/syntastic](https://github.com/vim-syntastic/syntastic)
* [lokaltog/vim-powerline](https://github.com/Lokaltog/vim-powerline)
* [xuyuanp/nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
* [kien/ctrlp.vim](https://github.com/kien/ctrlp.vim)
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
* [nathanaelkane/vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
* [tomasiser/vim-code-dark](https://github.com/tomasiser/vim-code-dark)
* [shutnik/jshint2.vim](https://github.com/Shutnik/jshint2.vim)
* [gcorne/vim-sass-lint](https://github.com/gcorne/vim-sass-lint)


## Installation

1. Clone this repo, this is going to be your home

```
git init
git remote add origin https://github.com/civan/no-place-like-home.git
git fetch
git reset origin/master
```
2. Install Vundle

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. Install plugins

```
vim +PluginInstall +qall
```