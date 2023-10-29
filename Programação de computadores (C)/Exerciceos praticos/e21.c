
#include <stdio.h>
int main() {
  int n;
  printf("Escolha um numero:");
  scanf("%d",&n);
  printf("os numeros que são divisiveis por 4 menor que %d:",n);
  for(int i=n-1; i>0;i--){
    if((i%4)==0){
      printf("\n\t %d",i);
    }
  }
  return 0;
}