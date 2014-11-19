function fish_greeting
  if not type fortune > /dev/null 2>&1
    echo "Fortune not installed!"
  end

  if not type cowsay > /dev/null 2>&1
    echo "Cowsay not installed!"
  end

  fortune -a | cowsay -f bud-frogs
end
