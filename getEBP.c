#include<stdio.h>

unsigned long getEBP(void){
__asm__("movl %ebp,%eax");
}
int main(void){
printf("EBP :%x\n", getEBP());
}
