#include <stdio.h>
int main() {
  float valor_ttl, qntd_1, qntd_2;
  printf("qual o valor do premio?");
  scanf("%f",&valor_ttl);
  qntd_1 = valor_ttl*0.46;
  qntd_2 = valor_ttl*0.32;
  valor_ttl -= qntd_1+qntd_2;
  printf("Primeiro premio: R$%.2f\n", qntd_1);
  printf("Segundo premio: R$%.2f\n", qntd_2);
  printf("Terceiro premio: R$%.2f\n", valor_ttl);
  return 0;
}