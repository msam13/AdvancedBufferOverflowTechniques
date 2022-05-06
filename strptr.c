#include<stdio.h>
#include<string.h>
#include<stdlib.h>

int main(int argc, char* args[])
{
char input[256];
char *conf = "test -f ~/.progrc";
char *license = "THIS SOFTWARE IS ....";
printf(license);
strcpy(input, args[1]);
if(system(conf))
	printf("missing .progrc");
}
