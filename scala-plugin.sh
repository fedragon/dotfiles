#!/bin/bash

mkdir -p ~/.vim/{ftdetect,indent,syntax} 
for d in ftdetect indent syntax ; do 
  curl -o ~/.vim/$d/scala.vim https://raw.githubusercontent.com/scala/scala-dist/master/tool-support/src/vim/$d/scala.vim; 
done
