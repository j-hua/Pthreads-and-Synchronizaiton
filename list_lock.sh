make randtrack_list_lock
randtrack 1 50 > rt1.out
sort -n rt1.out > rt1.outs
randtrack_list_lock 4 50 > rtll4.out
sort -n rtll4.out > rtll4.outs
diff rt1.outs rtll4.outs
