#include <stdio.h>
int main() {
  int n, num1=1,num2=1,num3, soma =0;
    printf("Quantos elementos voce quer na sequencia? ");
  scanf("%d",&n);
  printf("A sequencia de numeros é: \n");
  for(n=n;n>0;n--){
    num3 = num1+num2;
    printf("\t%d ",num3);
    num2 = num1;
    num1 = num3;
    soma += num3;
  }
  printf("\ne a soma dos elementos é: %d",soma);
  
  return 0;
}
