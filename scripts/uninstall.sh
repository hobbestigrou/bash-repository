#!/bin/sh

echo "Removing ~/.bash-repository"
if [[ -d ~/.bash-repository ]]
then
  rm -rf ~/.bash-repository
fi

echo "Thanks for trying out Bash repository. It's been uninstalled."
