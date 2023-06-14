#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int vet[10], i, qntd_neg = 0, posi_soma = 0, qntd_par = 0, qntd_x5 = 0;

    srand(time(NULL)); 

    for (i = 0; i < 10; i++) {
      vet[i] = rand()%100;
      if(vet[i] < 0){
        qntd_neg++;
      }
      if(vet[i]>0){
        posi_soma += vet[i];
      }
      if((vet[i]%2)==0){
        qntd_par++;
      }
      if((vet[i]%5)==0){
        qntd_x5++;
      }
    }

    printf("Vetor gerado:\n");
    for (i = 0; i < 10; i++) {
      printf("%d ", vet[i]);
    }
    printf("\n %d", qntd_neg);
    printf("\n %d", posi_soma); 
    printf("\n %d", qntd_par);
    printf("\n %d", qntd_x5);

    return 0;
}
