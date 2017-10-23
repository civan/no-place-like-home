# No place like $HOME setup

This repo adds a git repo for home to share same config accross machines.

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

#### 1. Clone this repo, this is going to be your $HOME
```
cd $HOME
```

```
git init
git remote add origin https://github.com/civan/no-place-like-home.git
git fetch
git reset --hard origin/master
```

#### 2. Install/Update Submodules

We have dependencies on :
* [Vundle](https://github.com/VundleVim/Vundle.vim.git)
* [Scripts](https://github.com/civan/scripts/)

```
 git submodule update --remote --recursive
```

#### 3. Install vim plugins
```
vim +PluginInstall +qall
```

#### 4. Scripts
Make sure you have the ~/scripts folder in your PATH.
```
 export PATH=$PATH:$HOME/bin:$HOME/scripts
```

Give the rigth permision to the scripts:

```
sudo chmod +x ~/scripts/*
```

##### grow-use.sh
To use specific versions of [grow](https://github.com/grow/grow/releases/).

Using 0.2.0 version:
```
grow-use.sh 0.2.0
```

Try:
```
grow --version
```
or
```
grow@0.2.0 --version
```
