#include <stdio.h>
#define N 5

int main(void) {
  int M[N][N], i, j, Nmaior, Soma, Aux;
  // Entrada de matriz
  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      printf("Digite o elemento %d %d da matriz:\n",i,j);
      scanf("%d",&M[i][j]);
    }
  }
  // Saida da matriz
  printf("A impressão da matriz: ");
  for(i=0;i<N;i++){
    printf("\n");
    for(j=0;j<N;j++){
      printf("\t%d",M[i][j]);
    }
  }
  // Numero maior da linha e soma dos valores das colunas
  
  for(i=0;i<N;i++){
    j = 0;
    Nmaior = M[i][j];
    Soma = 0;
    for(j=0;j<N;j++){
      if(Nmaior<M[i][j]){
        Nmaior = M[i][j];
      }
      Soma += M[j][i];
    }
    printf("\nO maior valor da linha %d:", i);
    printf(" %d ",Nmaior);
    printf("\tA soma da coluna %d:",i);
    printf(" %d", Soma);
  }
  // Imprimindo a matriz trocando a linha 0 com a linha 3 e a coluna 1 com a coluna 4 (Matriz 5x5)
  for(i=0;i<N;i++){
    Aux = M[0][i];
    M[0][i] = M[3][i];
    M[3][i] = Aux;
  }
  for(i=0;i<N;i++){
    Aux = M[i][1];
    M[i][1] = M[i][4];
    M[i][4] = Aux;
  }
  printf("\nA impressão da matriz modificada: ");
  for(i=0;i<N;i++){
    printf("\n");
    for(j=0;j<N;j++){
      printf("\t%d",M[i][j]);
    }
  }
  return 0;
}