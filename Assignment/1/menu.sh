#!/bin/bash

while true
do
    echo " "
    echo "*  Bash Commands  *"
    echo "1. List files"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup files"
    echo "6. Exit"
    echo " "
    
    select list in files disk path history backup exit
    
    
    do
        case $list in 
            "files")
                ls
                break;;
            "disk")
                df -h
                break;;
            "path")
                pwd
                #echo $PATH
                break;;
            "history")
                history
                break;;
            "backup")
                echo "Enter directory name: "
                read dirName
                echo $dirName " will begin backing up to BackupFolder"
                mkdir BackupFolder
                cp -r "$dirName" "BackupFolder"
                echo "Backed up content:"
                ls BackupFolder
                break;;
            "exit")
                echo "Exiting..."
                exit 0
                break;;
            *)
                echo "Error input!"
                break;;
        esac
        echo ""
    done   
done