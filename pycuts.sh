#!/bin/bash

# check if a filename was provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# add a Python3 shebang to the file
echo "#!/usr/bin/python3" > "$1"

# open vi with the provided filename
vi "+set nu" "$1"

# ask if file should be made executable
read -p "Do you want to make the file executable? (y/n) " make_executable

if [ "$make_executable" == "y" ] || [ "$make_executable" == "Y" ]; then
  # make the file executable
  chmod +x "$1"
  echo "File is now executable: $1"
fi

# ask if file should be checked using pycodestyle
read -p "Do you want to check the file using pycodestyle? (y/n) " check

if [ "$check" == "y" ] || [ "$check" == "Y" ]; then
  # run pycodestyle
  if ! pycodestyle "$1"; then
    echo "pycodestyle check failed for file: $1"
    exit 1
  fi
fi

read -p "Do you want to check the file using pycodestyle? (y/n) " gitcheck
if [ "$gitcheck" == "y" ] || [ "$gitcheck" == "Y" ]; then
read -p "Enter commit message: " message
git add .
git commit -m "$message"
git push
fi
