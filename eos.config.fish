# Open files and folders with default application using 'open'
function open
  command xdg-open $argv &> /dev/null &
end

# Go to sandbox-folder and empty it
function sandbox
  cd "$HOME/.sandbox-folder"
  for file in "$HOME/.sandbox-folder/"*;
    echo "Removing... $file";
    rm -r $file;
  end
  open .
end