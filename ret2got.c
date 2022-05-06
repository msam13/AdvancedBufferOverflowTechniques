#include<stdio.h>
#include<string.h>
#include<stdlib.h>

void anyfunction(void){
system("somecommand");
}

int main(int argc, char** argv){
char *ptr;
char array[8];
ptr=array;
strcpy(ptr, argv[1]);
printf("Array has %s at %p\n", ptr, &ptr);
strcpy(ptr, argv[2]);
printf("Array has %s at %p\n", ptr, &ptr);
}
