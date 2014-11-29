#!/usr/local/bin/fish

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/tmp

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cd ~/.vim/bundle/vimproc.vim
make
cd -

ln -s ~/Workspace/dotfiles/vim/vimrc ~/.vimrc

# Scala syntax
for d in ftdetect indent syntax
  mkdir -p ~/.vim/$d
  curl -o ~/.vim/$d/scala.vim https://raw.githubusercontent.com/scala/scala-dist/master/tool-support/src/vim/$d/scala.vim
end

brew install the_silver_searcher

