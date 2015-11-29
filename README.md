# Last Of The Pops

Checks if the script that is currently running is the last script in the directory.

If you require a particular script in a directory to always be the last (when run alphanumerically) then this is for you! 

I created this when working in a large development team where mistakes can sometimes happen especially if some team members are unaware of a particular build process. In particular a Cordova **after_prepare** hook directory.

## How It Works

* The script **0900.sh** must always be run last in this example.
* The other files are merely for demonstration purposes and do not do anything.
* **0900.sh** checks that it is the last file in its directory before it executes any code.
