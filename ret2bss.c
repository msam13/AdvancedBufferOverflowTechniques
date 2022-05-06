#include<stdio.h>
#include<string.h>

char globalbuf[256];

void function(char* input){
char localbuf[256];
strcpy(localbuf, input);
strcpy(globalbuf, localbuf);
}

int main(int c, char** argv){
function(argv[1]);
}
