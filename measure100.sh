echo "measurement of randtrack is as following:"
/usr/bin/time randtrack 4 100 | grep elapsed
/usr/bin/time randtrack 4 100 | grep elapsed
/usr/bin/time randtrack 4 100 | grep elapsed
/usr/bin/time randtrack 4 100 | grep elapsed
/usr/bin/time randtrack 4 100 | grep elapsed

echo "--------------------------------------------------------------"
echo "measurement of randtrack_global_lock is as following:"
echo "1 thread ----"
/usr/bin/time randtrack_global_lock 1 100 | grep elapsed
/usr/bin/time randtrack_global_lock 1 100 | grep elapsed
/usr/bin/time randtrack_global_lock 1 100 | grep elapsed
/usr/bin/time randtrack_global_lock 1 100 | grep elapsed
/usr/bin/time randtrack_global_lock 1 100 | grep elapsed

echo -n
echo "2 threads ----"
/usr/bin/time randtrack_global_lock 2 100 | grep elapsed
/usr/bin/time randtrack_global_lock 2 100 | grep elapsed
/usr/bin/time randtrack_global_lock 2 100 | grep elapsed
/usr/bin/time randtrack_global_lock 2 100 | grep elapsed
/usr/bin/time randtrack_global_lock 2 100 | grep elapsed

echo -n
echo "4 threads ----"
/usr/bin/time randtrack_global_lock 4 100 | grep elapsed
/usr/bin/time randtrack_global_lock 4 100 | grep elapsed
/usr/bin/time randtrack_global_lock 4 100 | grep elapsed
/usr/bin/time randtrack_global_lock 4 100 | grep elapsed
/usr/bin/time randtrack_global_lock 4 100 | grep elapsed


echo "--------------------------------------------------------------"
echo "measurement of randtrack_tm is as following:"
echo "1 thread ----"
/usr/bin/time randtrack_tm 1 100 | grep elapsed
/usr/bin/time randtrack_tm 1 100 | grep elapsed
/usr/bin/time randtrack_tm 1 100 | grep elapsed
/usr/bin/time randtrack_tm 1 100 | grep elapsed
/usr/bin/time randtrack_tm 1 100 | grep elapsed

echo -n
echo "2 threads ----"
/usr/bin/time randtrack_tm 2 100 | grep elapsed
/usr/bin/time randtrack_tm 2 100 | grep elapsed
/usr/bin/time randtrack_tm 2 100 | grep elapsed
/usr/bin/time randtrack_tm 2 100 | grep elapsed
/usr/bin/time randtrack_tm 2 100 | grep elapsed

echo -n
echo "4 threads ----"
/usr/bin/time randtrack_tm 4 100 | grep elapsed
/usr/bin/time randtrack_tm 4 100 | grep elapsed
/usr/bin/time randtrack_tm 4 100 | grep elapsed
/usr/bin/time randtrack_tm 4 100 | grep elapsed
/usr/bin/time randtrack_tm 4 100 | grep elapsed

echo "--------------------------------------------------------------"
echo "measurement of randtrack_list_lock is as following:"
echo "1 thread ----"
/usr/bin/time randtrack_list_lock 1 100 | grep elapsed
/usr/bin/time randtrack_list_lock 1 100 | grep elapsed
/usr/bin/time randtrack_list_lock 1 100 | grep elapsed
/usr/bin/time randtrack_list_lock 1 100 | grep elapsed
/usr/bin/time randtrack_list_lock 1 100 | grep elapsed

echo -n
echo "2 threads ----"
/usr/bin/time randtrack_list_lock 2 100 | grep elapsed
/usr/bin/time randtrack_list_lock 2 100 | grep elapsed
/usr/bin/time randtrack_list_lock 2 100 | grep elapsed
/usr/bin/time randtrack_list_lock 2 100 | grep elapsed
/usr/bin/time randtrack_list_lock 2 100 | grep elapsed

echo -n
echo "4 threads ----"
/usr/bin/time randtrack_list_lock 4 100 | grep elapsed
/usr/bin/time randtrack_list_lock 4 100 | grep elapsed
/usr/bin/time randtrack_list_lock 4 100 | grep elapsed
/usr/bin/time randtrack_list_lock 4 100 | grep elapsed
/usr/bin/time randtrack_list_lock 4 100 | grep elapsed


echo "--------------------------------------------------------------"
echo "measurement of randtrack_element_lock is as following:"
echo "1 thread ----"
/usr/bin/time randtrack_element_lock 1 100 | grep elapsed
/usr/bin/time randtrack_element_lock 1 100 | grep elapsed
/usr/bin/time randtrack_element_lock 1 100 | grep elapsed
/usr/bin/time randtrack_element_lock 1 100 | grep elapsed
/usr/bin/time randtrack_element_lock 1 100 | grep elapsed

echo -n
echo "2 threads ----"
/usr/bin/time randtrack_element_lock 2 100 | grep elapsed
/usr/bin/time randtrack_element_lock 2 100 | grep elapsed
/usr/bin/time randtrack_element_lock 2 100 | grep elapsed
/usr/bin/time randtrack_element_lock 2 100 | grep elapsed
/usr/bin/time randtrack_element_lock 2 100 | grep elapsed

echo -n
echo "4 threads ----"
/usr/bin/time randtrack_element_lock 4 100 | grep elapsed
/usr/bin/time randtrack_element_lock 4 100 | grep elapsed
/usr/bin/time randtrack_element_lock 4 100 | grep elapsed
/usr/bin/time randtrack_element_lock 4 100 | grep elapsed
/usr/bin/time randtrack_element_lock 4 100 | grep elapsed


echo "--------------------------------------------------------------"
echo "measurement of randtrack_reduction is as following:"
echo "1 thread ----"
/usr/bin/time randtrack_reduction 1 100 | grep elapsed
/usr/bin/time randtrack_reduction 1 100 | grep elapsed
/usr/bin/time randtrack_reduction 1 100 | grep elapsed
/usr/bin/time randtrack_reduction 1 100 | grep elapsed
/usr/bin/time randtrack_reduction 1 100 | grep elapsed

echo -n
echo "2 threads ----"
/usr/bin/time randtrack_reduction 2 100 | grep elapsed
/usr/bin/time randtrack_reduction 2 100 | grep elapsed
/usr/bin/time randtrack_reduction 2 100 | grep elapsed
/usr/bin/time randtrack_reduction 2 100 | grep elapsed
/usr/bin/time randtrack_reduction 2 100 | grep elapsed

echo -n
echo "4 threads ----"
/usr/bin/time randtrack_reduction 4 100 | grep elapsed
/usr/bin/time randtrack_reduction 4 100 | grep elapsed
/usr/bin/time randtrack_reduction 4 100 | grep elapsed
/usr/bin/time randtrack_reduction 4 100 | grep elapsed
/usr/bin/time randtrack_reduction 4 100 | grep elapsed

