#include <stdio.h>
int main() {
  int n,i;
  printf("Escolha um tamanho para os vetores(1-20): ");
  scanf("%d",&n);
  float VetX[n], VetY[n],VetZ[n];
  for(i=0; i<n;i++){
    printf("Digite o %dº elemento do primeiro Vetor:",i+1);
    scanf("%f",&VetX[i]);
  }
  for(i=0; i<n;i++){
    printf("Digite o %dº elemento do segundo Vetor:",i+1);
    scanf("%f",&VetY[i]);
  }
  for(i=0; i<n;i++){
    VetZ[i] = VetX[i]*VetY[i];
  }
  printf("Primeiro Vetor: \n");
  for(i=0; i<n;i++){
    printf("%.2f\t",VetX[i]);
  } 
  printf("\nSegundo Vetor: \n");
  for(i=0; i<n;i++){
    printf("%.2f\t",VetY[i]);
  } 
  printf("\nTerceiro Vetor: \n");
  for(i=0; i<n;i++){
    printf("%.2f\t",VetZ[i]);
  } 
  return 0;
}
