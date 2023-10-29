
#include <stdio.h>
int main() {
  float x, xr=1;
  int n;
  printf("Digite o numero:");
  scanf("%f",&x);
  printf("Digite a potencia que voce quer o numero:");
  scanf("%d",&n);
  for(int i=0;i<n;i++){
    xr = xr*x;
  }
  printf("O resultado é: %.2f",xr);
  return 0;
}