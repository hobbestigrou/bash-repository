#!/bin/bash

#More commands use
function history_stats() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head
}

#Uninstall 
function uninstall_bash_repository() {
  /bin/sh $BASH/scripts/uninstall.sh
}


