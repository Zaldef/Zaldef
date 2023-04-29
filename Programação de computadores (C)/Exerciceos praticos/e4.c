#include <stdio.h>
int main() {
  float largura, comprimento, metros_quadrados;
  printf("Largura da sala:");
  scanf("%f",&largura);
  printf("Comprimento da sala:");
  scanf("%f",&comprimento);
  metros_quadrados = largura*comprimento;
  printf("A sala tem:%.2f metros quadrados",metros_quadrados);
  return 0;
}