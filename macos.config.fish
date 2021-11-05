# Run Sublime text from the command line
function subl
  command open -a "Sublime Text" $argv
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