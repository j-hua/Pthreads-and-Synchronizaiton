echo "measurement of randtrack is as following:"
/usr/bin/time randtrack 4 50 | grep elapsed
/usr/bin/time randtrack 4 50 | grep elapsed
/usr/bin/time randtrack 4 50 | grep elapsed
/usr/bin/time randtrack 4 50 | grep elapsed
/usr/bin/time randtrack 4 50 | grep elapsed

echo "--------------------------------------------------------------"
echo "measurement of randtrack_global_lock is as following:"
echo "1 thread ----"
/usr/bin/time randtrack_global_lock 1 50 | grep elapsed
/usr/bin/time randtrack_global_lock 1 50 | grep elapsed
/usr/bin/time randtrack_global_lock 1 50 | grep elapsed
/usr/bin/time randtrack_global_lock 1 50 | grep elapsed
/usr/bin/time randtrack_global_lock 1 50 | grep elapsed

echo -n
echo "2 threads ----"
/usr/bin/time randtrack_global_lock 2 50 | grep elapsed
/usr/bin/time randtrack_global_lock 2 50 | grep elapsed
/usr/bin/time randtrack_global_lock 2 50 | grep elapsed
/usr/bin/time randtrack_global_lock 2 50 | grep elapsed
/usr/bin/time randtrack_global_lock 2 50 | grep elapsed

echo -n
echo "4 threads ----"
/usr/bin/time randtrack_global_lock 4 50 | grep elapsed
/usr/bin/time randtrack_global_lock 4 50 | grep elapsed
/usr/bin/time randtrack_global_lock 4 50 | grep elapsed
/usr/bin/time randtrack_global_lock 4 50 | grep elapsed
/usr/bin/time randtrack_global_lock 4 50 | grep elapsed

