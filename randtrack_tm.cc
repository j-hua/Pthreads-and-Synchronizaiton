#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#include "defs.h"
#include "hash.h"

#define SAMPLES_TO_COLLECT   10000000
#define RAND_NUM_UPPER_BOUND   100000
#define NUM_SEED_STREAMS            4

/*
 * ECE454 Students:
 * Please fill in the following team struct
 */
team_t team = {
		"Team Name", /* Team name */
		"Xiangyu Zhu", /* First member full name */
		"999943101", /* First member student number */
		"xiangyu.zhu@mail.utoronto.ca", /* First member email address */

		"Yufei Hua", /* Second member full name */
		"1000067205", /* Second member student number */
		"jeffrey.hua@mail.utoronto.ca" /* Second member email address */
};

unsigned num_threads;
unsigned samples_to_skip;

pthread_mutex_t count_mutex;

class sample;

class sample {
	unsigned my_key;
public:
	sample *next;
	unsigned count;

	sample(unsigned the_key) {
		my_key = the_key;
		count = 0;
	}
	;
	unsigned key() {
		return my_key;
	}
	void print(FILE *f) {
		printf("%d %d\n", my_key, count);
	}
};

// This instantiates an empty hash table
// it is a C++ template, which means we define the types for
// the element and key value here: element is "class sample" and
// key value is "unsigned".
hash<sample, unsigned> h;


//job of an individual thread
void* thread_routine(void *arg){
	long thread_index = *((long*) arg);

	int i, j, k;
	int rnum;
	unsigned key;
	sample *s;

	//	unsigned int tid = (unsigned int) pthread_self();
	//	printf("thread id is: %d \n", tid);
	//	printf("Thread arg is: %ld \n", thread_index);


	int seed_stream_begin, seed_stream_end;

	int each_seed_stream = NUM_SEED_STREAMS/num_threads;
	seed_stream_begin = each_seed_stream*thread_index;
	seed_stream_end = seed_stream_begin + each_seed_stream;

	//	printf("Thread arg is: %ld, begin at: %d, end at: %d \n", thread_index, seed_stream_begin, seed_stream_end);

	// process streams starting with different initial numbers
	for (i = seed_stream_begin; i < seed_stream_end; i++) {
		rnum = i;
		//		printf("Thread arg is: %ld, rnum=%d \n", thread_index, rnum);

		// collect a number of samples
		for (j = 0; j < SAMPLES_TO_COLLECT; j++) {

			// skip a number of samples
			for (k = 0; k < samples_to_skip; k++) {
				rnum = rand_r((unsigned int*) &rnum);
			}

			// force the sample to be within the range of 0..RAND_NUM_UPPER_BOUND-1
			key = rnum % RAND_NUM_UPPER_BOUND;


			__transaction_atomic{
				// if this sample has not been counted before
				if (!(s = h.lookup(key))) {

					// insert a new element for it into the hash table
					s = new sample(key);
					h.insert(s);
				}

				// increment the count for the sample
				s->count++;
			}
		}
	}

	pthread_exit(NULL);
}

int main(int argc, char* argv[]) {
	int i, j, k;
	long thread_index[4];

	// Print out team information
	printf("Team Name: %s\n", team.team);
	printf("\n");
	printf("Student 1 Name: %s\n", team.name1);
	printf("Student 1 Student Number: %s\n", team.number1);
	printf("Student 1 Email: %s\n", team.email1);
	printf("\n");
	printf("Student 2 Name: %s\n", team.name2);
	printf("Student 2 Student Number: %s\n", team.number2);
	printf("Student 2 Email: %s\n", team.email2);
	printf("\n");

	// Parse program arguments
	if (argc != 3) {
		printf("Usage: %s <num_threads> <samples_to_skip>\n", argv[0]);
		exit(1);
	}
	sscanf(argv[1], " %d", &num_threads); // not used in this single-threaded version
	sscanf(argv[2], " %d", &samples_to_skip);

	// initialize a 16K-entry (2**14) hash of empty lists
	h.setup(14);

	pthread_t threads[num_threads];


	//create threads based on num_threads
	for (i = 0; i < num_threads; i++) {
		thread_index[i] = i;
		int create_succeed = pthread_create(&(threads[i]), NULL, &thread_routine, (void *)(thread_index+i));
		if(create_succeed!=0)
			printf("thread %ld creation failed", thread_index);
	}

	for (i = 0; i < num_threads; i++) {
		pthread_join(threads[i],NULL);
	}
	//avoid garbage collection of thread_index[] which contains the important indexes
	thread_index[0];

	// print a list of the frequency of all samples
	h.print();
}
