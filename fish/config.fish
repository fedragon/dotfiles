# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
# set fish_theme robbyrussell

alias tmux="tmux -2"

# set fish_key_bindings fish_vi_key_bindings
# set fish_bind_mode insert

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Load environment variables and components

set -x EDITOR vim
set -x MAVEN_OPTS "-Xmx512m"

set -x LC_ALL "en_US.UTF-8"
set -x LANG   "en_US.UTF-8"

switch (uname)
  case Darwin
    # Powerline integration

    powerline-daemon -q
    set fish_function_path $fish_function_path "/usr/local/lib/python2.7/site-packages/powerline/bindings/fish"
    powerline-setup
    # ---

    set -x JAVA_HOME (/usr/libexec/java_home)
    set -x SPARK_HOME (brew info apache-spark | grep /usr/local/Cellar/ | cut -d ' ' -f 1)
  case  Linux
    set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
  case '*'
end
