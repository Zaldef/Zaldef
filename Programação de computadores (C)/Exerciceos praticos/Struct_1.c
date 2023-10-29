#include "stdio.h"
#include "stdlib.h"
#define N 3
typedef struct cadastro{
  char nome[50];
  int idade;
  float peso;
  float altura;
}cadastro;
int main() {
  cadastro paciente[N];
  int maior_IMC = 0, old = 0, qntd_pessoas_altas = 0;
  float media_altura = 0;

  
  for(int i=0;i<N;i++){
    fflush(stdin);
    printf("\nDigite os dados do %d° paciente:",i+1);
    printf("\nNome:");
    scanf("%s",paciente[i].nome);
    printf("\nIdade:");
    scanf("%d",&paciente[i].idade);
    printf("\nPeso:");
    scanf("%f",&paciente[i].peso);
    printf("\nAltura:");
    scanf("%f",&paciente[i].altura);
    if(i>0){
      if((paciente[i].peso/(paciente[i].altura * paciente[i].altura))>(paciente[i-1].peso/(paciente[i-1].altura * paciente[i-1].altura))){
        maior_IMC = i;
      }
      if(paciente[i].idade > paciente[i-1].idade){
        old = i;
      }
    }
    media_altura += paciente[i].altura;
  }
  // Entrada e processo
  system("clear");
  media_altura /= N;
  printf("\nPessoa com maior IMC:\n");
  printf("%s\n", paciente[maior_IMC].nome);
  printf("%d\n", paciente[maior_IMC].idade);
  printf("%.2f\n", paciente[maior_IMC].peso);
  printf("%.2f\n", paciente[maior_IMC].altura);

  printf("\nPessoa mais velha:\n");
  printf("%s\n", paciente[old].nome);
  printf("%d\n", paciente[old].idade);
  printf("%.2f\n", paciente[old].peso);
  printf("%.2f\n", paciente[old].altura);

  for(int i=0; i<N;i++){
    if(paciente[i].altura > media_altura){
      qntd_pessoas_altas++;
    }
  }
  printf("Quantidade de pessoas com altura acima da media: %d",qntd_pessoas_altas);
}
