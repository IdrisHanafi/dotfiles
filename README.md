# My dotfiles

## Overview

Backup, restore, and sync the prefs and settings for my toolbox.

## Prerequisites

You will need the following things properly installed on your computer.

* [tmux](https://github.com/tmux/tmux)
* [vim (min version 8.2)](https://www.vim.org/)
* [vim-plug](https://github.com/junegunn/vim-plug)
* [ripgrep](https://github.com/BurntSushi/ripgrep)

## Installation

1. Clone this repository:
  
  ```
  $ git clone https://github.com/IdrisHanafi/dotfiles.git
  ```
2. Change into the cloned directory:
  
  ```
  $ cd dotfiles
  ```
3. Move it to your home directory:
  
  ```
  $ cp -r * ~/
  ```
4. Open up the file in vim and run the following commands:
  
  ```
  :source %
  :PlugInstall
  ```
  
## Important Notes

1. For tmux, my prefix is both `C-b` or `C-a`.
