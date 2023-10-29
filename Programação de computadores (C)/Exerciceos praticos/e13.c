
#include <stdio.h>
int main() {
  float salario;
  int plano;
  printf("Qual o seu plano de trabalho?");
  scanf("%d",&plano);
  printf("Qual o seu salario?");
  scanf("%f",&salario);
  switch(plano){
    case 1:
    salario += salario*0.1;
    printf("Seu novo salario %.2f", salario);
    break;

    case 2:
    salario += salario*0.15;
    printf("Seu novo salario %.2f", salario);
    break;

    case 3:
    salario += salario*0.2;
    printf("Seu novo salario %.2f", salario);
    break;
    
    default :
    printf ("Plano invalido!\n");
  }
  return 0;
}