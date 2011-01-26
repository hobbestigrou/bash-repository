#!/usr/bin/bash

# Initializes Bash Repository

# add a function path
fpath=($BASH/functions $fpath)

# Load all of the config files in ~/bash-repository that end in .bash
# TIP: Add files you don't want in git to .gitignore
for config_file ($BASH/lib/*.bash) source $config_file

# Load all of the plugins that were defined in ~/.bashrc
plugin=${plugin:=()}
for plugin ($plugins) source $BASH/plugins/$plugin/$plugin.plugin.bash

# Load the theme
source "$BASH/themes/$BASH_THEME.bash-theme"
