
#include <stdio.h>
int main() {
  printf("os números entre 1000 e 2000 que, quando divididos por 11 produzam resto igual a 5: ");
  for(int i=1000; i<=2000;i++){
    if((i%11)==5){
      printf("\n\t %d",i);
    }
  }
  return 0;
}