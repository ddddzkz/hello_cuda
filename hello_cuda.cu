#include <stdio.h>
#include <cuda.h>

__global__ void kernel()
{
	printf("hello cuda\n");
	__syncthreads();
}

int main()
{
	kernel<<<1, 1>>>();
	cudaDeviceSynchronize();
	int i = 0, a = 0;
	for(i = 0; i < 10000000; i ++)
		a ++;
	printf("a = %d\n", a);
	return 0;
}
