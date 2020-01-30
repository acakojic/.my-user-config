#include <stdio.h>

void list_of_char(char *path);

int main ()
{
//	list_of_char("abcd");

	char arr[] = "abc";

	int len = sizeof(arr);

	printf("%d \n", sizeof(arr));

	list_of_char(arr);
	
	return 0;
}


void list_of_char(char *path)
{
	int i;

	int len = sizeof(path);

	printf("Lenth: %d \n", len);
	
	for (i = 0; i < len; i++)
	{
		printf("%d: %c\n", i, path[i]);
	}
}
