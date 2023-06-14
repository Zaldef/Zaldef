#include <stdio.h>
int main() {
  int n, soma =0;
  printf("Digite um numero: ");
  scanf("%d",&n);
  do{
  soma += n%10;
  n /=10;
  }while(n>0);
  printf("A soma dos digitos é: %d ", soma);
  return 0;
}
