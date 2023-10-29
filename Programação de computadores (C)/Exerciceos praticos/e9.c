#include <stdio.h>
int main() {
  float p1,p2,p3,menor_valor;
  printf("Valor do primeiro produto:");
  scanf("%f",&p1);
  printf("Valor do segundo produto:");
  scanf("%f",&p2);
  printf("Valor do terceiro produto:");
  scanf("%f",&p3);
  
  if(p1<p2)
    menor_valor = p1;
  else
    menor_valor = p2;
  if(menor_valor>p3)
    menor_valor = p3;
  printf("O produto que custa R$%.2f é o mais barato\n",menor_valor);
  if(p1==menor_valor)
      printf("o primeiro Produto é mais barato\n");
  if(p2==menor_valor)
    printf("o segundo produto é o mais barato\n");
  if(p3==menor_valor)
    printf("o terceiro Produto é o mais barato\n");
  return 0;
}