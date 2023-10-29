#include <stdio.h>
#define n 15
int main() {
  int i=0, vetx[n],cont=0;
  do{
    printf("Digite o %d° elemento do vetor: ",i+1);
    scanf("%d",&vetx[i]);
    i++;
  }while(i<15);
  printf("Vetor: ");
  for (i = 0; i<n; i++) {
    printf("%d ", vetx[i]);
    if (vetx[i] > 30) {
      cont++;
    }
  }
  printf("\n%d numeros sao maiores que 30.\n", cont);
  return 0;
}
