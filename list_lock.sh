make randtrack_list_lock
randtrack 1 50 > rt1.out
sort -n rt1.out > rt1.outs
randtrack_list_lock 1 50 > rtll1.out
sort -n rtll1.out > rtll1.outs
diff rt1.outs rtll1.outs
