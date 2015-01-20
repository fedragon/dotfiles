#!/usr/local/bin/fish

set -x MAVEN_OPTS "-Xmx512m"

switch (uname)
  case Darwin
    set -x JAVA_HOME (/usr/libexec/java_home)
  case  Linux
    set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
  case '*'
end
