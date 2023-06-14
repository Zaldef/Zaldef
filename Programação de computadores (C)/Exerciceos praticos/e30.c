#include <stdio.h>
int main() {
  int n,k,i;
  printf("Escolha o tamanho do vetor(1-20): ");
  scanf("%d",&n);
  int VetX[n],VetY[n];
  printf("Escolha o valor de K:");
  scanf("%d",&k);

  for(i=0; i<n;i++){
    printf("Digite o %dº elemento do Vetor:",i+1);
    scanf("%d",&VetX[i]);
  }

  for(i=0; i<n;i++){
    VetY[i] = VetX[i]*k;
  }

  printf("Primeiro Vetor: \n");
  for(i=0; i<n;i++){
    printf("%d\t",VetX[i]);
  }
  printf("\nValor de K: %d",k);
  printf("\nVetor multiplcado por K: \n");
  for(i=0; i<n;i++){
    printf("%d\t",VetY[i]);
  }
  return 0;
}
