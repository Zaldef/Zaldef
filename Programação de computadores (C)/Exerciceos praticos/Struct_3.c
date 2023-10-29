#include "stdio.h"
#include "stdlib.h"
#define N 5
typedef struct cadastro{
  int RF;
  int cargo;
  int dependentes;
  float salario;
}cadastro;

int main(){
  // variaveis
  int maiorn_dependentes=0, cntdr_1 = 0;
  float salario_medio = 0, salario_medio_N = 0;
  // cadastro de N alunos
  cadastro funcionarios[N];
  for(int i=0;i<N;i++){
    printf("\nDigite o registro do %dº funcionario: ",i+1);
    scanf("%d",&funcionarios[i].RF);
    do{
      printf("Digite o codigo de seu cargo: ");
      scanf("%d",&funcionarios[i].cargo);
      if(funcionarios[i].cargo<= 0 || funcionarios[i].cargo > 99){
        printf("Código de cargo digitado errado, tente novamente\n");
      }
    }while(funcionarios[i].cargo<= 0 || funcionarios[i].cargo > 99);
    printf("Digite a quantidade de dependentes do %dº funcionario: ",i+1);
    scanf("%d",&funcionarios[i].dependentes);
    printf("Digite o salario do %dº funcionario: ",i+1);
    scanf("%f",&funcionarios[i].salario);
    system("clear");
    salario_medio += funcionarios[i].salario;
  }
  salario_medio/=N;

  maiorn_dependentes = 0;
  for(int i=1;i<N;i++){
    if(funcionarios[i].dependentes>funcionarios[maiorn_dependentes].dependentes){
        maiorn_dependentes = i;
    }
  }

  for(int i=1;i<100;i++){
    for(int j=0;j<N;j++){
      if(funcionarios[j].cargo == i){
        salario_medio_N += funcionarios[j].salario;
        cntdr_1++;
      }
    }
    if(cntdr_1 > 0){
      salario_medio_N /= cntdr_1;
      printf("\nO salario medio para o cargo %d é: %2.f",i,salario_medio_N);
    }
    salario_medio_N = 0;
    cntdr_1 = 0;
  }
  printf("\n\nFunionario com maior numero de dependentes: \n\t RF: %d \n\t Cargo: %d", funcionarios[maiorn_dependentes].RF, funcionarios[maiorn_dependentes].cargo);
  //impressão das informações
  for(int i=0;i<N;i++){
    printf("\n\nAs informações do %d funcionario",i+1);
    printf("\n\tO registro do funcionario: %d",funcionarios[i].RF);
    printf("\n\tO codigo de seu é cargo: %d",funcionarios[i].cargo);
    printf("\n\tSeus dependentes: %d",funcionarios[i].dependentes);
    printf("\n\tSeu salario: %.2f",funcionarios[i].salario);
  }  
  return 0;
}
