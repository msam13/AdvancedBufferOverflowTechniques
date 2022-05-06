#include<stdio.h>
#include<string.h>
#include<stdlib.h>

void function(char* str){
printf("%s\n", str);
system("any command");
}

int main(int c, char** argv){
void (*ptr)(char* str);
ptr = &function;
char buff[64];
strcpy(buff,argv[1]);
(*ptr)(argv[2]);
}
