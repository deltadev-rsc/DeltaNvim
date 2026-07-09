#!/usr/bin/bash

clear

function install_deps {
    while true; do 
        echo "choose your distro group"
        echo "1.arch, 2.void, 3.debian"
        read group 

        if [ "$group" == "1" ]; then
            sudo pacman -S luarocks lua54-luarocks
            sudo pacman -S npm wget curl 
            sudo pacman -S rustup cargo
            break
        elif [ "$group" == "2" ]; then
            sudo xbps-install -S luarocks
            sudo xbps-install -S npm wget curl 
            sudo xbps-install -S cargo
            curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
            break
        elif [ "$group" == "3" ]; then 
            sudo apt install lua5.4 build-essential libreadline-dev
            sudo apt install wget curl
            wget https://github.com/luarocks/luarocks/archive/refs/tags/v3.13.0.tar.gz
            tar -xvf v3.13.0.tar.gz 
            chmod +x v3.13.0.tar.gz/configure
            cd v3.13.0.tar.gz/
            ./configure && make && sudo make install
            sudo luarocks install luasocket
            sudo apt install cargo npm
            curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
            break
        else
            echo "choose only 1 or 2"
        fi
    done
}

install_deps
