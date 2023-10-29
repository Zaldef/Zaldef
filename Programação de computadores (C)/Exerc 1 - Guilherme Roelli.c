//Exerciceo 1(Leitor de vetores e armazenamento dos maiores elementos por posição) - Guilherme Roelli RA:22899140
#include <stdio.h>

int main() {
  // Entrada - definindo o tamanho dos vetores
  int N;
  printf("\tQual o tamanho do vetor a ser utilizado? (1-20)\n");
  scanf("%d", &N);
  int vetX[N], vetY[N], vetZ[N];
  // Entrada - armezanando valores nos vetores
  printf("\tDigite o primeiro vetor:\n");
  for(int i=0;i<N;i++){
    scanf("%d",&vetX[i]);
  }
  
  printf("\tDigite o segundo vetor:\n");
  for(int i=0;i<N;i++){
    scanf("%d",&vetY[i]);
  }
  // Processamento - comparando o elemento i nos vetores X e Y e armazenando o maior no vetor Z
  for(int i=0;i<N;i++){
    if(vetX[i]>vetY[i])
      vetZ[i]=vetX[i];
    else
      vetZ[i]=vetY[i];
  }

  //Saida - impressão final dos tres vetores
  printf("\tPrimeiro Vetor: ");
  for(int i=0;i<N;i++){
    printf("[%d]",vetX[i]);
  }
  
  printf("\n\tSegundo Vetor:  ");
  for(int i=0;i<N;i++){
    printf("[%d]",vetY[i]);
  }
  
  printf("\n\tTerceiro Vetor: ");
  for(int i=0;i<N;i++){
    printf("[%d]",vetZ[i]);
  }
  return 0;
}