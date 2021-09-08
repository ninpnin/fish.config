# Open files and folders with default application using 'open'
function open
  command xdg-open $argv &> /dev/null &
end
