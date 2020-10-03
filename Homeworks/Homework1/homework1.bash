#!/bin/Ash
#VE482 Homework1
useradd -d /home/wenator04 wenator04 #Create a new user
ps -ax #List all the currently running processes
top #Display the characteristics of the CPU and the available memory
head -200 /dev/urandom | cksum | cut -f 1 -d" " > random1
head -200 /dev/urandom | cksum | cut -f 1 -d" " > random2 #Redirect some random output into two different files
cat random1 random2>concatenate #Concatenate the two previous files
hexdump concatenate #Read the content of the resulting file as hexdecimal values
find /usr/src -type f -name "*semaphore*" | xargs grep -rl "ddekit_sem_down" #Use a single command to find all the files in /usr/src with the word semaphore in their name and containing the word ddekit_sem_down
