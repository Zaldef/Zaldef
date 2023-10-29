
#include <stdio.h>
int main() {
  int n, cont, nparsoma=0, nimparqntd=0;
  printf("Quantos numeros deseja inserir?");
  scanf("%d", &n);
  float vet[n];
  for(int i=0; i<n;i++){
    printf("Digite o %d° numero:\n", i+1);
    scanf("%f", &vet[i]);
    cont = vet[i];
    if((cont%2)==0){
      nparsoma += cont;
    }else{
      nimparqntd ++;
    }
  }
  printf("Soma de todos os pares: %d\n",nparsoma);
  printf("Soma da quantidade de numeros impares: %d\n",nimparqntd);
  printf("Soma deles:%d\n",nparsoma+nimparqntd);
  return 0;
}