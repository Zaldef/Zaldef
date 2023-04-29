#include <math.h>
#include <stdio.h>
int main() {
  float a, b, c, delta, x1, x2;
  printf("Qual o coeficente a da equação quadratica?");
  scanf("%f", &a);
  printf("Qual o coeficente b da equação quadratica?");
  scanf("%f", &b);
  printf("Qual o coeficente c da equação quadratica?");
  scanf("%f", &c);
  delta = b * b - (4 * a * c);
  x1 = (-b + sqrt(delta)) / (2 * a);
  x2 = (-b - sqrt(delta)) / (2 * a);
  printf("As raizes dessa equação são:%.2f e %.2f", x1, x2);
  return 0;
}