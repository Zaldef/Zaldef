#include <stdio.h>
int main() {
  int vetx[10], vety[10], vetz[10];
  for(int i=0; i<10; i++){
    printf("Digite o %d° elemento do primeiro vetor:",i+1);
    scanf("%d",&vetx[i]);
  }
  for(int i=0; i<10; i++){
    printf("Digite o %d° elemento do segundo vetor:",i+1);
    scanf("%d",&vety[i]);
  }
  for(int i=0; i<10; i++){
    vetz[i] = vetx[i]+vety[i];
  }

  printf("Primeiro Vetor: \n");
  for(int i=0; i<10;i++){
    printf("%d\t",vetx[i]);
  }
  printf("Segundo Vetor: \n");
  for(int i=0; i<10;i++){
    printf("%d\t",vety[i]);
  }
  printf("Terceiro Vetor: \n");
  for(int i=0; i<10;i++){
    printf("%d\t",vetz[i]);
  }
  return 0;
}
