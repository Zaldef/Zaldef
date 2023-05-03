
#include <stdio.h>
int main() {
  int N,i;
  printf("Digite um numero Inteiro:");
  scanf("%d",&N);
  printf("Seus divisores são:\n");
  for(i=1;i<=N;i++){
    if(N%i ==0){
      printf("%d é divisor de %d\n",i, N);
    }
  }
  return 0;
}