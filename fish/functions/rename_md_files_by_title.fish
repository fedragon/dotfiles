function _rename
    set -l f $argv[1]

    string match -q -r '^.+\.md$' $f > /dev/null
    if test $status -eq 0
      cat $f | read title
      set -l new_filename (string replace -r '^#\s(.+)$' '$1.md' $title)

      echo 'renaming' $title 'to' "$new_filename"
      mv "$f" "$new_filename"
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
    else
      _rename $f
    end
  end
end

function rename_md_files_by_title -d "Recursively renames all Markdown files in directory according to their title"
  set -l start (pwd)

  _visit_tree $start

  cd $start
end
