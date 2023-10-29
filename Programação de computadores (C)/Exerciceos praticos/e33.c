#include <stdio.h>
int main() {
  int vetx[10], pos_maior,  maior, pos_menor, menor;
  for(int i=0; i<10; i++){
    printf("Digite o %d° elemento do primeiro vetor:",i+1);
    scanf("%d",&vetx[i]);
  }
  pos_maior = 0;
  pos_menor = 0;
  maior = vetx[0];
  menor = vetx[0];
  for(int i=1; i<10; i++){
    if(vetx[i]> maior){
      maior = vetx[i];
      pos_maior = i;
    }
    if(vetx[i]<menor){
      menor = vetx[i];
      pos_menor = i;
    }
  }
  printf("%d",maior);
  printf("%d",pos_maior);
  printf("%d",menor);
  printf("%d",pos_menor);


  return 0;
}
