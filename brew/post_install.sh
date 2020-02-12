#!/bin/bash

break_line(){
    echo
    echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
    echo
}

install(){
    brew analytics off;
    brew install fish htop bash wget watch bat tldr micro fx exa
    brew install python3 go node 
}

break_line
brew list
install
brew cleanup
brew upgrade
break_line
brew list
break_line
