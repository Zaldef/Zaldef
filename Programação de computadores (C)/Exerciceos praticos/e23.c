
#include <stdio.h>
int main() {
  int n=5,i, Sal_menor_100=0;
  float salario[n], qntd_filhos[n], Sal_Soma = 0, Fil_Soma = 0, Maior_Sal = 0;
  // entrada
  for(i=0; i<n;i++){
    printf("Digite o salario do %d° habitante: R$",i+1);
    scanf("%f",&salario[i]);
    printf("Digite a quantidade de filhos do %d° habitante: ",i+1);
    scanf("%f",&qntd_filhos[i]);
  }
  //saida da media de salario
  Maior_Sal = salario[0];
  for(i=0;i<n;i++){
    Sal_Soma += salario[i];
    if(Maior_Sal<salario[i]){
      Maior_Sal = salario[i];
    }
    if(salario[i]<=100){
      Sal_menor_100++;
    }
  }
  Sal_Soma /= n;
  Sal_menor_100 = Sal_menor_100*100/n;
  printf("A media do salario da população é: R$%.2f",Sal_Soma);
  printf("\nO maior salario é: R$%.2f",Maior_Sal);
  printf("\nO percentual de pessoas com salario menor que 100 é:%d%%",Sal_menor_100);

  //saida da media de filhos
  for(i=0;i<n;i++){
    Fil_Soma  += qntd_filhos[i]; 
  }
  Fil_Soma /= n;
  printf("\nA media de filhos por pessoa da população é: %.2f",Fil_Soma);
  
  return 0;
}