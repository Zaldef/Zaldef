
#include <stdio.h>
int main() {
  int N, Nmaior, Nmenor;
  printf("Escolha o primeiro Numero:");
  scanf("%d",&Nmaior);
  printf("Escolha o segundo numero:");
  scanf("%d",&Nmenor);
  if(Nmaior<Nmenor){
    N=Nmaior;
    Nmaior=Nmenor;
    Nmenor=N;
  }
  printf("Todos os numeros entre %d e %d\n", Nmenor, Nmaior);
while(Nmenor < Nmaior-1){
    Nmenor ++;
    printf("%d", Nmenor); 
  }
  return 0;
}