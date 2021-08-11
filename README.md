# shell_tasks

 1. weather.sh: add ability to read simple config file

 2. Write script that will make sure user sysop belonging to group sysop exists on system. If the user already exists, print information.

 3. Write script that will check all the files in etc for user and permissions. If user is other than root, or permissions of 
   other (third in rwxrwxrwx - remember its owner group other) are something else than READ, write to some log file. 
   You may look at stat command to check permissions in octal form.

 4. Put above scripts into cron and run it once a week at chosen time.

 5. Write script that will check / filesystem usage percentage. If more than 80% is taken, it will log to a file. 

 6. Put above script to cron, execute once a day.

 7. Write bash function that will print "Hello USER" where user will be supplied as function argument. 
   Write a for loop that will call this function as many times as first argument to script. USER
   will be second argument to the script.

 8. Using w command check all three values of Load statistic. If it is equal or larger than 1, log to a file. 

 9. Add above to cron, run it every hour, except on Sundays.

10. Write a script, that will read /var/log/kern.log file line by line. It will split the line into 7 fields and print last one. 
    If the line contains word ERROR or ERR, print exlamations marks above it and below. 
    Example:
    !!!!!!!!!!!!!!!!!!!!!!!!!!!
    ERR: Could not initialize DRM
    !!!!!!!!!!!!!!!!!!!!!!!!!!! 
