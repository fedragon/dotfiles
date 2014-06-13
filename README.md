## Installation 

  curl -k https://raw.githubusercontent.com/fedragon/dotfiles/master/install.sh -O - | sh

## Post-installation

### Open GVIM and install configured plugins

  gvim .
  :PluginInstall

### Make vimproc

  cd .vim/bundle/vimproc.vim
  make
  cd ~

