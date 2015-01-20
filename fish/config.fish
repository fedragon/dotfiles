# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

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

# Environment variables
set -x EDITOR vim
set -x MAVEN_OPTS "-Xmx512m"

# OS-specific configuration
switch (uname)
  case Darwin
    # Powerline integration
    powerline-daemon -q

    set fish_function_path $fish_function_path "/usr/local/lib/python2.7/site-packages/powerline/bindings/fish"

    powerline-setup
    set -x JAVA_HOME (/usr/libexec/java_home)
  case  Linux
    set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
  case '*'
end
