function gitroot
  set -l dir (git rev-parse --show-cdup)

  if test -n "$dir"
    cd "$dir"
  end
end
