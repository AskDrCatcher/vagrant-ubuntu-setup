#!/usr/bin/env bash

echo "entering the bootstrap"

HOME=/home/vagrant

ls -alt $HOME

if [[ -e $HOME/.bashrc ]] 
then
  echo "removing the default $HOME/.bashrc file"
  rm $HOME/.bashrc
fi

echo "copying the .bashrc from current folder to $HOME"

cp /vagrant/.bashrc $HOME/

source $HOME/.bashrc

echo "exiting the bootstrap"
