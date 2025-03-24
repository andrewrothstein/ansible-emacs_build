#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=http://ftp.gnu.org/gnu/emacs

dl()
{
    local ver=$1
    local archive_type=${2:-tar.gz}

    local file="emacs-${ver}.${archive_type}"

    # http://ftp.gnu.org/gnu/emacs/emacs-30.1.tar.gz
    local url=$MIRROR/$file

    local lfile=$DIR/$file
    if [ ! -e $lfile ];
    then
        curl -sLf -o $lfile $url
    fi

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}

dl ${1:-30.1}
