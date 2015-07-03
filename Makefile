NVCC=nvcc

all: hello_cuda
hello_cuda: hello_cuda.cu
	nvcc hello_cuda.cu -o hello_cuda
clean: 
	rm hello_cuda
