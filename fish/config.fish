# Load environment variables and components
set -x BROWSER "firefox"
set -x EDITOR "vim"
set -x SHELL  /usr/local/bin/fish
set -x MAVEN_OPTS "-Xmx512m"

set -x LC_ALL "en_US.UTF-8"
set -x LANG   "en_US.UTF-8"

switch (uname)
  case Darwin
    set fish_key_bindings fish_user_key_bindings
    set fish_bind_mode insert

    set -x JAVA_HOME (/usr/libexec/java_home)
  case '*'
end

aliases
