#include <stdio.h>

float fatorial(int n) {
  float vfat;
  if (n <= 1)
    return (1);
  else {
    vfat = n * fatorial(n - 1);
    return (vfat);
  }
}

int main() {
  int numero;
  float f;
  printf("Digite o numero que deseja calcular o fatorial: ");
  scanf("%d", &numero);
  f = fatorial(numero);
  printf("Fatorial de %d = %.0f", numero, f);
  return 0;
}