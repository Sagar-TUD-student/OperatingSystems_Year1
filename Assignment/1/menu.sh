#!/bin/bash

echo "*  Bash Commands  *"
echo "List files"
echo "Show free disk space"
echo "Show system path"
echo "Display command history"
echo "Backup files"
echo "Exit"
echo " "

select list in files disk sysPath comHis backup exit
do
    case $list in 
        "files")
            $ ls;;
        "disk")
            $ df -h;;
        "sysPath")
            $ pwd;;
        "comHis")
            $ history;;
        "backup")
            echo "Enter directory name: "
            read $dirName
            echo $dirName " will begin backing up to BackupFolder"
            mkdir backupFolder
            cp -r $dirName $backupFolder
            echo "Backed up content:"
            cat $backupFolder;;
        "exit")
            echo "Exiting..."
            break;;
        *)
            echo "Error input!";;
    esac
done