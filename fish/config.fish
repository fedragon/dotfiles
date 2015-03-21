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
