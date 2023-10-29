//Exerciceo 2(Verificar se o vetr está ordenado) - Guilherme Roelli RA:22899140
#include <stdio.h>

int main() {
  // Entrada - definindo o tamanho dos vetor
  int N;
  printf("\tQual o tamanho do vetor a ser utilizado? (2-20)\n");
  scanf("%d", &N);
  int vetX[N], flag = 0;
  // Entrada - armezanando valores no vetor
  printf("\tDigite o primeiro vetor:\n");
  for(int i=0;i<N;i++){
    scanf("%d",&vetX[i]);
  }
  // Processamento - verificando se está em ordem crescente
  for(int i=0;i<N;i++){
    if(vetX[i]>vetX[i+1])
      flag=1;
      break;
  }
  //Saida - Dizendo se o vetor esta ou nao ordenado
  if(flag==1){
    printf("Vetor esta desordenado");
  }else{
    printf("Vetor esta ordenado");
  }
  return 0;
}