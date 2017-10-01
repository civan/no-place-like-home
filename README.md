# No place like $HOME setup

This repo adds a git repo for home to share same config accross multiples
machines.

[Vundle](https://github.com/VundleVim/Vundle.vim) Plugins:

* scrooloose/nerdtree
* scrooloose/syntastic
* gcorne/vim-sass-lint
* Xuyuanp/nerdtree-git-plugin
* Lokaltog/vim-powerline
* kien/ctrlp.vim
* tpope/vim-fugitive
* nathanaelkane/vim-indent-guides
* tomasiser/vim-code-dark
* Shutnik/jshint2.vim

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
