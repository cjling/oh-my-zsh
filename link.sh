#!/bin/bash

oh_path=$(pwd)

rm ~/.zshrc
rm ~/.oh-my-zsh
rm ~/.zsh_history

ln -sf $oh_path/templates/zshrc.cjling      ~/.zshrc
ln -sf $oh_path/templates/zsh_history       ~/.zsh_history
ln -sf $oh_path                             ~/.oh-my-zsh
