
#include <stdio.h>
int main() {
  float x, xr;
  int n = 10;
  printf("Qual numero voce quer a tabuada?");
  scanf("%f",&x);
  for(int i=1; i<=n; i++){
    xr = x*i;
    printf("\t\n%.2f x %d = %.2f",x,i, xr);
  }
  return 0;
}