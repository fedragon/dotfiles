function enable_modal_editing -d 'Enables modal editing for all apps provided as argument'
  if test (count $argv) -eq 0
    echo 'At least one app name is needed'
    return
  end

  defaults delete -g ApplePressAndHoldEnabled &> /dev/null
  if test $status -eq 0
    echo 'Removed global press and hold'
  end

  for app in $argv
    defaults delete $app ApplePressAndHoldEnabled
    defaults write $app ApplePressAndHoldEnabled -bool false
    echo "Disabled press and hold for $app"
  end
end

