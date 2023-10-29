
#include <stdio.h>
int main() {
  int n, Cont_0_25 = 0,Cont_26_50 = 0,Cont_51_75 = 0,Cont_75_100 = 0;
  do{
    printf("Digite um numero:");
    scanf("%d",&n);
    if(n>=0){
      if(n<=25){
        Cont_0_25++;
      }else if(n>25 && n<=50){
        Cont_26_50++;
      }else if(n>50 && n<=75){
        Cont_51_75++;
      }else if(n>75 && n<=100){
        Cont_75_100++;
      }
    }
    if(n<0 || n>100){
      printf("Numero fora do range permitido, encerrando contagem!!");
    }
  }while(n>=0 && n<=100);
  printf("\n\t Numeros entre 0-25:   %d", Cont_0_25);
  printf("\n\t Numeros entre 26-50:  %d",Cont_26_50);
  printf("\n\t Numeros entre 51-75:  %d",Cont_51_75);
  printf("\n\t Numeros entre 75-100: %d",Cont_75_100);
  return 0;
}