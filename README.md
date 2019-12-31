# My vimrc cuz why not

## Overview

here just in case if you wanna copy my vimrc lol

## Prerequisites

You will need the following things properly installed on your computer.

* [vim](https://www.vim.org/)
* [vim-plug](https://github.com/junegunn/vim-plug)
* [ripgrep](https://github.com/BurntSushi/ripgrep)

## Installation

1. Clone this repository:
  
  ```
  $ git clone https://github.com/IdrisHanafi/vimrc.git
  ```
2. Change into the cloned directory:
  
  ```
  $ cd vimrc
  ```
3. Move it to your home directory:
  
  ```
  $ cp -r .vimrc ~/
  ```
4. Open up the file in vim and run the following commands:
  
  ```
  :source %
  :PlugInstall
  ```
5. Add the following to your .bashrc or .zshrc:

   ```
   # Enable a better reverse search experience.
   #   Requires: https://github.com/junegunn/fzf (to use fzf in general)
   #   Requires: https://github.com/BurntSushi/ripgrep (for using rg below)
   export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
   ```
