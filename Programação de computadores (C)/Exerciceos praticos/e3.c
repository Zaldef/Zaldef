#include <stdio.h>
int main() {
  float preco, desconto; 
  printf("Preço atual\n");
  scanf("%f",&preco);
  printf("porcentagem de desconto\n");
  scanf("%f",&desconto);
  preco -= preco*(desconto/100);
  printf("Preço novo:R$%.2f",preco); 
  return 0;
}