
CC = g++
CFLAGS = -O3

DBFLAG = -g

MT = -lpthread
STM = -fgnu-tm

all: randtrack randtrack_global_lock randtrack_tm randtrack_list_lock randtrack_element_lock randtrack_reduction

randtrack: list.h hash.h defs.h randtrack.cc
	$(CC) $(CFLAGS) randtrack.cc -o randtrack

randtrack_global_lock: list.h hash.h defs.h randtrack_global_lock.cc
	$(CC) $(CFLAGS) randtrack_global_lock.cc -o randtrack_global_lock $(MT)

randtrack_tm: list.h hash.h defs.h randtrack_tm.cc
	$(CC) $(CFLAGS) randtrack_tm.cc -o randtrack_tm $(MT) $(STM)
	
randtrack_list_lock: list.h hash_list_lock.h defs.h randtrack_list_lock.cc
	$(CC) $(CFLAGS) randtrack_list_lock.cc -o randtrack_list_lock $(MT)

randtrack_element_lock: list.h hash_element_lock.h defs.h randtrack_element_lock.cc
	$(CC) $(CFLAGS) randtrack_element_lock.cc -o randtrack_element_lock $(MT)
	
randtrack_reduction: list.h hash_reduction.h defs.h randtrack_reduction.cc
	$(CC) $(CFLAGS) randtrack_reduction.cc -o randtrack_reduction $(MT)	

clean:
	rm -f *.o randtrack randtrack_global_lock randtrack_tm randtrack_list_lock randtrack_reduction
