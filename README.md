# techcuts
Introduction
------------

This Bash script is designed to simplify the process of creating and editing Python scripts. The script includes several features, such as adding a shebang to the file, opening the file in vi editor, checking the file with pycodestyle, and making the file executable.

Installation / download
-----------------------
To use, download the script frm the github link below.

https://raw.githubusercontent.com/Imukua/techcuts/main/pycuts.sh

Before first use first make the script executable by running:

`chmod +x pycuts.sh`

Usage
-----

To use the script, provide the filename as an argument when running the script:

bash

`./pycuts.sh filename.py`

Shebang Addition
----------------

The script adds a Python3 shebang to the beginning of the file. This is done automatically before opening the file in the vi editor.

Line numbers in VI!
---------

The script uses the vi editor to open the file for editing. By default, line numbers are enabled in vi.

Chmod Functionality
-------------------

The script prompts the user to make the file executable after editing. If the user chooses to make the file executable, the script uses the `chmod` command to change the file permissions.

Pycodestyle Checking
--------------------

The script prompts the user to check the file with pycodestyle. If the user chooses to check the file, the script runs the `pycodestyle` command and displays an error message if any issues are found. This helps ensure that the code is consistent with PEP 8 style guidelines.

Github cloud functionality
--------------------

The script prompts the user to git add, commit with a preffred message and push to github. If the user agrees it does all that automatically.
