#!/bin/sh

if [ -x "/usr/bin/git" ] ; then
  git clone 'https://github.com/ares-ensiie/vim_conf' "$HOME/vim_conf"
  if [ -d "$HOME/.vim" ] ; then
    mv "$HOME/.vim" "$HOME/.vim.bak"
  fi
  mv "$HOME/vim_conf" "$HOME/.vim"
else
  echo "Please install git" 1>&2
  exit -1
fi

if [ -f "$HOME/.vimrc" ] ; then
  mv "$HOME/.vimrc" "$HOME/.vimrc.bak"
fi

cat > $HOME/.vimrc << EOF
"==== Vim Configuration ===="
:source $HOME/.vim/vimrc
EOF


