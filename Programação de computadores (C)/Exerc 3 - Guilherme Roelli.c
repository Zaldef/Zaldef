//Exerciceo 3(Verificar o numero maior e o menor dentro de um vetor) - Guilherme Roelli RA:22899140
#include <stdio.h>

int main() {
  // Entrada - definindo o tamanho dos vetor
  int N;
  printf("\tQual o tamanho do vetor a ser utilizado? (2-20)\n");
  scanf("%d", &N);
  int vetX[N], flag = 0, Nmaior, Nmenor;
  // Entrada - armezanando valores no vetor
  printf("\tDigite o primeiro vetor:\n");
  for(int i=0;i<N;i++){
    scanf("%d",&vetX[i]);
  }
  // Processamento - verificando qual o maior e qual o menor
  Nmaior = vetX[0];
  Nmenor = vetX[0];
  for(int i=1; i<N; i++){
    if(Nmaior<vetX[i])
      Nmaior = vetX[i];
    if(Nmenor>vetX[i])
      Nmenor = vetX[i];
  }
  //Saida - Dizendo qual e o maior e qual o menor
  printf("%d e o maior!\n",Nmaior);
  printf("%d e o menor!\n",Nmenor);
  return 0;
}