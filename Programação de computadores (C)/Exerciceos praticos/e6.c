#include <stdio.h>
int main() {
  float N1,N2,N3,media_final;
  printf("Primeira nota:");
  scanf("%f",&N1);
  printf("Segunda nota:");
  scanf("%f",&N2);
  printf("terceira nota:");
  scanf("%f",&N3);
  media_final = N1*0.2 + N2*0.3 + N3*0.5;
  printf("media final: %.2f",media_final);
  return 0;
}