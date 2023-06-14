
#include <stdio.h>
int main() {
  int n = 10, num1=1,num2=0,num3=0;
  printf("A sequencia de numeros é: \n");
  for(n=n;n>0;n--){
    num3 = num1+num2;
    printf("\t%d ",num3);
    num2 = num1;
    num1 = num3;
  }
  
  return 0;
}