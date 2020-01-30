#include <stdio.h>

void word_find(char *path, char character);

void tip();

int main ()
{
	tip();

	return 0;
}



void tip()
{
	int i = sizeof(int);

	printf("Tip int: %d\n", i);
	printf("Tip double: %d\n", sizeof(double));
	printf("Tip float: %d\n", sizeof(float));
	printf("Tip long: %d\n", sizeof(long));
	printf("Tip unsigned: %d\n", sizeof(unsigned));
}
