#!/bin/bash

CURRENT_DIR=$(pwd)

cd ~/dotfiles

git add .
git commit -m "Automated commit"
git push

cd "$CURRENT_DIR"
echo "Finished commit"
#!/bin/bash

CURRENT_DIR=$(pwd)

cd ~/dotfiles

# Check if a commit message argument is provided
if [ -z "$1" ]; then
  echo "Commit message pls"
  exit 1
else
  COMMIT_MESSAGE="$1"
fi

git add .
git commit -m "$COMMIT_MESSAGE"
git push

cd "$CURRENT_DIR"
echo "Finished commit with message: '$COMMIT_MESSAGE'"
