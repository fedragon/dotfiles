#!/usr/local/bin/fish

# Environment variables
set -x EDITOR vim

. java.fish

# OS-specific configuration
switch (uname)
  case Darwin
    # Powerline integration
    powerline-daemon -q
    set fish_function_path $fish_function_path "/usr/local/lib/python2.7/site-packages/powerline/bindings/fish"
    powerline-setup

    set -x SPARK_HOME (brew info apache-spark | grep /usr/local/Cellar/ | cut -d ' ' -f 1)
  case  Linux
  case '*'
end
