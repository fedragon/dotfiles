function bootstrap
  set -l cmd
  set -l project_name

  for i in $argv
    switch $i
      case 'spray'
        set cmd $i
      case "*"
        set project_name $i
    end
  end

  switch $cmd
    case 'spray'
      if test -n "$project_name"
        git clone https://github.com/spray/spray-template/ $project_name
        true
      else
        echo "Please specify a name for the new project."
        false
      end
    case "*"
      echo "Unrecognized command."
      false
  end
end
