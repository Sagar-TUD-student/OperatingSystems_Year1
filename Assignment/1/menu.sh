#!/bin/bash

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
    
    read $list
    
    case $list in 
        1)
            ls;;
        2)
            df -h;;
        3)
            pwd;;
        4)
            history;;
        5)
            echo "Enter directory name: "
            read dirName
            echo $dirName " will begin backing up to BackupFolder"
            mkdir BackupFolder
            cp -r $dirName BackupFolder
            echo "Backed up content:"
            cat $BackupFolder;;
        6)
            echo "Exiting..."
            break;;
        *)
            echo "Error input!";;
    esac
done