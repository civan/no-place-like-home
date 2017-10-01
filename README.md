# No place like $HOME setup

This repo adds a git repo for home to share same config accross multiples
machines.

It uses:

* [Vundle](https://github.com/VundleVim/Vundle.vim) - for managing plugins

## Instalation

1. Clone this repo, this is going to be your home

```
git init
git remote add origin https://github.com/civan/no-place-like-home.git
git fetch
git reset origin/master
```

2. Install plugins

```
vim +PluginInstall +qall
```
