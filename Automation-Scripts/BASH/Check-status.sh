#!/bin/bash

# this script help me to check the status of a service on my system.

if systemctl is-active --quiet nginx
then 
    echo "Nginx is running fine."
else
    echo "Nginx is not running. Please check the service."
fi    


# Output:

# user@FSPL-IT-008:~/VScode-TEST/New/DevOps-journey/Automation-Scripts/BASH$ chmod +x Check-status.sh
# user@FSPL-IT-008:~/VScode-TEST/New/DevOps-journey/Automation-Scripts/BASH$ ./Check-status.sh 
# Nginx is running fine.
# user@FSPL-IT-008:~/VScode-TEST/New/DevOps-journey/Automation-Scripts/BASH$ 