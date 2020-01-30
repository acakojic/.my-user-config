#include <stdio.h>
#include <sys/types.h>
#include <dirent.h>


int main ()
{


	

	return 0;
}

void files_in_dir(char[] path)
{
	DIR *dp;
	struct dirent *ep;

	int [];
		
	for ( )
	{

	}
		
	dp = opendir ("");
  
	if (dp != NULL)
	{
		while (ep = readdir (dp))
		{
			puts (ep->d_name);
		}
		
		(void) closedir (dp);
	}
	else
	{
		perror ("Couldn't open the directory");
	}
}
