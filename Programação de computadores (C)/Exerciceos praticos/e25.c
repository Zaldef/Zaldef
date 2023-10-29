
#include <stdio.h>
int main() {
  int numerador=1, denominador=1;
  float soma=0;
  for(int i=0; i<50;i++){
    soma += numerador/denominador;
    numerador += 2;
    denominador +=1;
  }
  printf("O resultado das somas das fraçoes é: %.2f ",soma);
  
  return 0;
}