
#include <stdio.h>
int main() {
  int N;
  printf("Escolha um numero de 0-5");
  scanf("%d",&N);
  switch(N){
  {
    case 0 :
    printf ("Zero\n");
    break;
    case 1 :
    printf ("Um\n");
    break;
    
    case 2 :
    printf ("Dois\n");
    break;
    
    case 3 :
    printf ("Tres\n");
    break;
    
    case 4 :
    printf ("Quatro\n");
    break;
    
    case 5 :
    printf ("Cinco\n");
    break;
   
    default :
    printf ("Numero invalido!\n");
  }
  }
  return 0;
}