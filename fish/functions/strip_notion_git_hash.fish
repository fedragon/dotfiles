function _strip_dir
    set -l f $argv[1]
    echo 'stripping' $f

    string match -q -r '^.+\s([a-z0-9]{5})$' $f > /dev/null
    if test $status -eq 0
      echo $f 'matches'
      set -l res (string replace -r '^(.+)\s[a-z0-9]{5}$' '$1' $f)

      echo $f '->' $res
      mv "$f" "$res"
    end
end

function _strip_file
    set -l f $argv[1]
    echo 'stripping' $f

    string match -q -r '^.+\s([a-z0-9]{5}).+$' $f > /dev/null
    if test $status -eq 0
      echo $f 'matches'
      set -l res (string replace -r '^(.+)\s[a-z0-9]{5}\.(.+)$' '$1.$2' $f)

      echo $f '->' $res
      mv "$f" "$res"
    end
end

function _visit_tree
  echo (ls $argv[1])

  for f in (ls $argv[1])
    if test -d $f
      echo $f 'is a directory'

      pushd $f

      _visit_tree (realpath .)

      popd

      _strip_dir $f

    else
      _strip_file $f
    end
  end
end

function strip_notion_git_hash -d "Recursively removes trailing git hash in files and folders exported from Notion"
  set -l start (pwd)

  _visit_tree $start

  cd $start
end
