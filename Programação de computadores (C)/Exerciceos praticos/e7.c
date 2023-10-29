#include <stdio.h>
int main() {
  float a,b,c,d,e,f,x,y;
  printf("Digite o valor do coeficente a da equação:");
  scanf("%f",&a);
  printf("Digite o valor do coeficente b da equação:");
  scanf("%f",&b);
  printf("Digite o valor do coeficente c da equação:");
  scanf("%f",&c);
  printf("Digite o valor do coeficente d da equação:");
  scanf("%f",&d);
  printf("Digite o valor do coeficente e da equação:");
  scanf("%f",&e);
  printf("Digite o valor do coeficente f da equação:");
  scanf("%f",&f);
  x = (c*e - b*f)/(a*e - b*d);
  y = (a*f - c*d)/(a*e - b*d);
  printf("Valor de X:%.2f",x);
  printf("Valor de Y:%.2f",y);
  return 0;
}