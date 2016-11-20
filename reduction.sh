make randtrack_reduction
randtrack 1 50 > rt1.out
sort -n rt1.out > rt1.outs
randtrack_reduction 1 50 > rtrd1.out
sort -n rtrd1.out > rtrd1.outs
diff rt1.outs rtrd1.outs
