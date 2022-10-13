# Load environment variables and components
set -x BROWSER "firefox"
set -x EDITOR "vim"
set -x SHELL  /usr/local/bin/fish

set -x LC_ALL "en_US.UTF-8"
set -x LANG   "en_US.UTF-8"

switch (uname)
  case Darwin
    set fish_key_bindings fish_user_key_bindings
    set fish_bind_mode insert
  case '*'
    echo "I'm not ready for this OS!"
end

aliases
golang

starship init fish | source

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
