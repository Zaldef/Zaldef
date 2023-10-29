#include <stdio.h>
int main() {
  int n,i,s=0;
  printf("Escolha o tamanho do vetor(1-20): ");
  scanf("%d",&n);
  int VetX[n];
  for(i=0; i<n;i++){
    printf("Digite o %dº elemento do Vetor:",i+1);
    scanf("%d",&VetX[i]);
  }

  for(i=0; i<n;i++){
    s += VetX[i];
  }

  printf("Primeiro Vetor: \n");
  for(i=0; i<n;i++){
    printf("%d\t",VetX[i]);
  }
  printf("\nValor da soma dos elementos: %d",s);
  return 0;
}
