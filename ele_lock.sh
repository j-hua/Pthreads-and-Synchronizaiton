make randtrack_element_lock
randtrack 1 50 > rt1.out
sort -n rt1.out > rt1.outs
randtrack_element_lock 1 50 > rtel1.out
sort -n rtel1.out > rtel1.outs
diff rt1.outs rtel1.outs
