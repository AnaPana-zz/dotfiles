#! /bin/bash -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASH_ALIASES="bash_aliases"
VIMRC="vimrc"
VIM_PLUG_DIR="vim"
VIM_PLUGINS="plugins.vim"

ln -s ${DIR}/${BASH_ALIASES} ${HOME}/.${BASH_ALIASES}
ln -s ${DIR}/${VIM_PLUG_DIR} ${HOME}/.${VIM_PLUG_DIR}
ln -s ${DIR}/${VIM_PLUGINS} ${HOME}/.${VIM_PLUGINS}
ln -s ${DIR}/${VIMRC} ${HOME}/.${VIMRC}

sudo apt-get install vim -y

