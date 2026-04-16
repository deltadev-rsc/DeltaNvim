#!/usr/bin/bash

NVIM_CONF="~/.config/nvim"
NVIM_CONF_BACKUP="~/.config/nvim/backup"
NVIM_CONF_FROM_REPO="~/DeltaNvim/.config/nvim"

function base_actions() {
    while true; do
        echo "вы установили nvim ?"
        echo "(y/n)"
        read -r isnvim

        if [ "$isnvim" == "y" ]; then
            echo "тогда приступим к остальным действиям"
            echo "проверка на наличие директории ~/.config/nvim"
            
            find ~/.config/ -type d -name nvim
            if [ -d "$NVIM_CONF" ]; then
                mkdir -p "$NVIM_CONF_BACKUP"
                cp -r -a "$NVIM_CONF" "$NVIM_CONF_BACKUP"
                mv "$NVIM_CONF_FROM_REPO" "$NVIM_CONF"
            fi

            if [ ! -d "$NVIM_CONF" ]; then
                echo "у тебя нет папки с конфигом неовима"
                echo "просто создай её по команде 'mkdir ~/.config/nvim' "
                exit 1
            fi
        elif [ "$isnvim" == "n" ]; then
            echo "так поставь ёптить!"
            break
        fi
    done
}
