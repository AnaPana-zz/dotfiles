#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASH_ALIASES=".bash_aliases.sh"

ln -s ${DIR}/${BASH_ALIASES} ${HOME}/${BASH_ALIASES}
