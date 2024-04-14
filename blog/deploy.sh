expected_path="/Users/toan/code/toantran-ea.github.io/blog"
current_path=$(pwd)
# Assert the paths are equal
if [ "$current_path" == "$expected_path" ]; then
  echo "Building website .."
  nikola build
  echo "Build finished."
  cp -R output/* ..
  echo "All done - ready to git commit-push"
else
  echo "Error: Script is not running in the expected folder. Current path: $current_path"
  # You can optionally exit the script here with an error code
  exit 1
fi
