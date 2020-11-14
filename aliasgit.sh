#!/bin/bash
# sudo cp aliasgit.sh /usr/local/bin/
if [[ -z "$@" ]]; then
    echo >&2 "You must supply an argument!"
    exit 1
elif [[ ! -d "$@" ]]; then
    echo >&2 "$@ is not a valid directory!"
    exit 1
fi

APPLICATION_PATH=$@
cd "${APPLICATION_PATH}"
pwd
echo "[alias]" >> .git/config
echo "        co = checkout" >> .git/config
echo "        br = branch" >> .git/config
echo "        ci = commit" >> .git/config
echo "        st = status" >> .git/config
echo "        log = log --pretty=oneline --abbrev-commit --graph --decorate" >> .git/config

