function gitroot
  set -l dir (git rev-parse --show-toplevel)

  if test -n "$dir"
    cd "$dir"
  end
end
