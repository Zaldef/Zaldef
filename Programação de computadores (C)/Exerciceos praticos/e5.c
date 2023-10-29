#include <stdio.h>
int main() {
  float real, cotacao, dolar;
  printf("Valor em Real: R$");
  scanf("%f",&real);
  printf("cotação do dollar:");
  scanf("%f",&cotacao);
  dolar = real/cotacao;
  printf("Valor em Dollar: $%.2f", dolar);
  return 0;
}