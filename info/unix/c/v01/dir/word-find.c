#include <stdio.h>

void character_find(char *path, char character);
void word_find(char *characters, char *word);

void tip();

int main ()
{
//	list_of_char("abcd");

	char characters[] = "ababcdefgs";
	char word[] = "abc";

	int len = sizeof(characters) / sizeof(char);
	int len02 = sizeof(characters) / sizeof(characters[0]);

	//int	printf("%d \n", sizeof(arr));

	printf("Lenth of elements in array: %d \n", len);
	printf("Lenth of elements in array: %d \n", len02);

	word_find(characters, word);
	
	return 0;
}


void character_find(char *path, char character)
{
	int i;

	int len = sizeof(path);

	printf("Lenth: %d \n", len);
	
	for (i = 0; i < len; i++)
	{
		if (path[i] == character)
		{
			printf("%d: %c\n", i, path[i]);

			break;
		}
	}

	printf("Provera posle for-petlje \n");
}

void word_find(char *characters, char *word)
{
	int i;

	int size_t = sizeof(characters) / sizeof(char);

	printf("Lenth: %d \n", sizeof(size_t));

	/*
	for (i = 0; i < len; i++)
	{
		if (path[i] == character)
		{
			printf("%d: %c\n", i, path[i]);

			break;
		}
	}
	*/
}


