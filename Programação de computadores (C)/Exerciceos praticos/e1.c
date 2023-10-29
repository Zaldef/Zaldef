#include <stdio.h>

int main() {
  float salario, reajuste;
  printf("Qual o salario?");
  scanf("%f", &salario);
  printf("Qual o percentual de ajuste?");
  scanf("%f",&reajuste);
  salario += salario*(reajuste/100);
  printf("novo salario:R$%.2f", salario);
  return 0;
}