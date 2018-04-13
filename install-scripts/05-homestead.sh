#!/usr/bin/bash

if [ ! -d ~/Homestead ] ; then

    vagrant box add laravel/homestead

    git clone https://github.com/laravel/homestead.git ~/Homestead

    cd ~/Homestead
    git checkout v7.3.0
    bash init.sh
    cd ~
else
    echo "Homestead installed.";
fi
