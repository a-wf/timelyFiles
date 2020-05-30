#!/bin/bash

function ss_echoproxy() {
    echo http_proxy  = $http_proxy
    echo HTTP_PROXY  = $HTTP_PROXY
    echo https_proxy = $https_proxy
    echo HTTPS_PROXY = $HTTPS_PROXY
    echo ftp_proxy   = $ftp_proxy
    echo socks_proxy = $socks_proxy
    echo no_proxy    = $no_proxy
}

function ss_setproxy() {
    #export {http,https,ftp}_proxy
    export http_proxy='http://proxy:3128'
    # export HTTP_PROXY='http://proxy:3128'
    export https_proxy='http://proxy:3128'
    # export HTTPS_PROXY='http://proxy:3128'
    export ftp_proxy='http://proxy:3128'
    # export socks_proxy='http://proxy:3128'
    export no_proxy="localhost,127.0.0.1,192.168.0.0/16, 10.190.0.0/16, 90.84.0.0/16, 84.39.0.0/16"
    export NO_PROXY="localhost,127.0.0.1,192.168.0.0/16, 10.190.0.0/16, 90.84.0.0/16, 84.39.0.0/16"

}


function ss_unsetproxy() {
    #unset {http,https,ftp}_proxy
    export http_proxy=''
    export HTTP_PROXY=''
    export https_proxy=''
    export HTTPS_PROXY=''
    export ftp_proxy=''
    export socks_proxy=''
    #export no_proxy="localhost,127.0.0.1,.softathome.com"
    # unset {http,https,ftp}_proxy
    # unset {HTTP,HTTPS,FTP}_PROXY
}

# echo "end proxy func"
#if [ -f smb://moorea/globalestorage/cerbereInstall/aliasproxy ]; then
#    . smb://moorea/globalestorage/cerbereInstall/.aliasproxy
#fi

#if [ -f /home/monitor/aliasproxy.sh ]; then
#    . /home/monitor/aliasproxy.sh
#fi
