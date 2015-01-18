function start_spark
  set path (brew info apache-spark | grep /usr/local/Cellar/ | cut -d ' ' -f 1)
  eval $path/libexec/sbin/start-all.sh
end
