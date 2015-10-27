# kgalli VIM configuration and used plugins
This git repository contains my vim configuration file(s) which I use for daily work.

# General setup
Clone the configs repository. If you do not want to use https replacing https:// with git:// (ssh) protocol should also work.

```bash
cd $HOME
git clone https://github.com/kgalli/dev-bootstrap.git
```

## Automatic vim setup

The manual setup steps for linux can be executed at once using the install.sh script.

```bash
cd $HOME/dev-bootstrap/vim
./setup
```

## Manual vim setup

Symlink vim directory to ~/.vim

```bash
ln -nfs $HOME/dev-bootstrap/vim/ ~/.vim
```

Symlink vimrc configuration file to ~/.vimrc

```bash
ln -nfs $HOME/dev-bootstrap/vim/vimrc ~/.vimrc
```

Note: For Windows you have to copy the files into the user directory of your windows account (Windows 7: c:\Users\<username>\). Attention use vimfiles instead of .vim as VIM working directory and \_vim for .vim (\_vimrc for .vimrc) as configuration file. Otherwise it won't work.

### Plugins

Be aware that git://github.com/tpope/vim-pathogen.git is used to handle
vim plugins. With pathogen vim plugin installation is super easy:

```bash
cd ~/.vim/bundle
# support docker syntax
git clone https://github.com/honza/dockerfile.vim.git
# fuzzy file search
git clone https://github.com/kien/ctrlp.vim
# explore filesystem
git clone https://github.com/scrooloose/nerdtree.git
# syntax checker
git clone https://github.com/scrooloose/syntastic.git
# git support
git clone https://github.com/tpope/vim-fugitive.git
# shows git diff in the gutter
git clone https://github.com/airblade/vim-gitgutter.git
# trailing whitespaces
git clone https://github.com/bronson/vim-trailing-whitespace.git
# insert mode completion via tab
git clone https://github.com/ervandew/supertab.git
# go development support
git clone https://github.com/fatih/vim-go
# super nice status bar
git@github.com:bling/vim-airline.git
```
