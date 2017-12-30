#!/bin/bash
# Short script to pre-configure Ubuntu MATE


error()
{
    echo "${1:-"Error while running script."}" 1>&2
    exit 1
}


echo "Copying panel layout configurations. Will need root password."
sudo cp MM-Custom-tweak.layout /usr/share/mate-panel/layouts/ || error "Could not copy layout file."
sudo cp MM-Custom-tweak.panel /usr/share/mate-panel/layouts/ || error "Could not copy panel file."
dconf load / < custom.dconf || error "Loading dconf file failed."






