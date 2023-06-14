#include "stdio.h"
#include "stdlib.h"
#define N 5
typedef struct cadastro{
  int RA;
  char nome[30];
  float nota1;
  float nota2;
  float nota3;
}cadastro;

int main(){
  // variaveis
  int aluno_maior_nota1 = 0, aluno_maior_media = 0, aluno_menor_media = 0;
  // cadastro de N alunos
  cadastro alunos[N];
  for(int i=0;i<N;i++){
    printf("Digite o RA do %dº aluno: ",i+1);
    scanf("%d",&alunos[i].RA);
    getchar();
    printf("Digite o nome do %dº aluno: ",i+1);
    scanf("%s",alunos[i].nome);
    printf("Digite a primeria nota do %dº aluno: ",i+1);
    scanf("%f",&alunos[i].nota1);
    printf("Digite a segunda nota do %dº aluno: ",i+1);
    scanf("%f",&alunos[i].nota2);
    printf("Digite a terceira nota do %dº aluno: ",i+1);
    scanf("%f",&alunos[i].nota3);
  }
  //processo
  for(int i = 1;i<N;i++){
    if(alunos[i].nota1>alunos[i-1].nota1){
      aluno_maior_nota1 = i;
    }
    if((alunos[i].nota1 + alunos[i].nota2 + alunos[i].nota3)/3 > (alunos[i-1].nota1 + alunos[i-1].nota2 + alunos[i-1].nota3)/3){
      aluno_maior_media = i;
    }
    if((alunos[i].nota1 + alunos[i].nota2 + alunos[i].nota3)/3 < (alunos[i-1].nota1 + alunos[i-1].nota2 + alunos[i-1].nota3)/3){
      aluno_menor_media = i;
    }
  }
  for(int i = 0;i<N;i++){
        if((alunos[i].nota1 + alunos[i].nota2 + alunos[i].nota3)/3 >= 6){
      printf("\nO aluno %s está aprovado!!", alunos[i].nome);
    }else{
      printf("\nO aluno %s está reprovado!!", alunos[i].nome);
    }
  }
  printf("\nAluno com a maior nota1: %s", alunos[aluno_maior_nota1].nome);
  printf("\nAluno com a maior media: %s", alunos[aluno_maior_media].nome);
  printf("\nAluno com a menor media: %s", alunos[aluno_menor_media].nome);
  return 0;
}
