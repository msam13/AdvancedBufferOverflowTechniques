#include<stdio.h>
#include<string.h>

void public(char* args){
char buff[12];
strcpy(buff, args);
printf("public\n");
}

void secret(void){
printf("secret\n");
}

int main(int argc, char* argv[]){
int k = 1;
if(k == 0) secret();
else public(argv[1]);
}
