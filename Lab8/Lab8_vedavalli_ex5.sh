#!/bin/bash
while true
do
echo "How can I help you? You can select the options for your queries.
1. List files.
2. Today's date.
3. Long listing files with file size display.
4. Who is the user?
5. Calendar
6. Exit to the Unix shell"

read -p "choice:" choice
case $choice in
        1) ls -l ;;
        2) date ;;
        3) ls -lh ;;
        4) whoami ;;
        5) cal ;;
        6) exit ;;
        *) echo "invalid option"
esac
done
