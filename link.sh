#!/bin/bash

oh_path=$(pwd)

rm ~/.zshrc
rm ~/.oh-my-zsh

ln -sf $oh_path/templates/zshrc.cjling      ~/.zshrc
ln -sf $oh_path                             ~/.oh-my-zsh
