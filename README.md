# BadUSBKiller
A Bash script to block a Bad USB ( Rubber Ducky ) attack

The script needs to be run as root.

The script works just like an antivirus does. Like an antiviruses stores signatures of viruses and then compares the file being scanned to these signatures, the same way this script contains keywords which are found in the names of common BadUSBs ( Rubber Duckies) and then checks if any of the connected devices' names contains those keywords.  If it encounters any such device, the device is then blocked automatically.
