make randtrack_element_lock
randtrack 1 50 > rt1.out
sort -n rt1.out > rt1.outs
randtrack_element_lock 4 50 > rtel4.out
sort -n rtel4.out > rtel4.outs
diff rt1.outs rtel4.outs
