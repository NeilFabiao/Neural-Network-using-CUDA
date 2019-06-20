CC	= /usr/local/cuda-10.0/bin/nvcc #Points to NVCC on lab computers
LDFLAGS = -L /usr/local/cuda-10.0/lib64 #Included Libraries
IFLAGS 	= -I/usr/local/cuda-10.0/samples/common/inc #Included sample Files

all: nn_3layer 

nn_3layer: nn_3layer.cu
	$(CC) nn_3layer.cu $(LDFLAGS) $(IFLAGS) -c $<
	$(CC) nn_3layer.o  $(LDFLAGS) $(IFLAGS) -o nn_3layer 


# target_name: object_name.cu
	#$(CC) object_name.cu $(LDFLAGS) $(IFLAGS) -c $<
	#$(CC) object_name.o $(LDFLAGS) $(IFLAGS) -o target_name

clean:
	$(RM) nn_3layer*.o*~ #add target_name
