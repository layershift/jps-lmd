#!/bin/bash

#Script for intstalling Maldet & Clamscan on new servers

function install_maldet () 
{
    echo "Installing maldet on the `hostname` server"
    cd /
    wget https://www.rfxn.com/downloads/maldetect-current.tar.gz
    tar -xvf maldetect-current.tar.gz
    cd maldetect-* && sh install.sh
    echo "Maldet Installed Successfully!"
}

function install_dependencies ()
{
    yum install -y epel-release
    yum install -y inotify-tools
    echo -n "Dependencies installed successfully!"
}
function install_clamscan ()
{
    yum install -y clamav
    echo "Clamscan Installed Successfully"
}

function check_version ()
{
    echo -n "Maldet Version is:"
    maldet --version
    echo -n "Clamscan Version is:"
    clamscan --version
}

install_dependencies
install_maldet
install_clamscan
check_version

