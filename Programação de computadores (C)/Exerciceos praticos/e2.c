#include <stdio.h>
int main() {
  int A,B,C;
  printf("Primeiro valor\n");
  scanf("%d",&A);
  printf("Segundo valor\n");
  scanf("%d",&B);
  C = A;
  A = B;
  B = C;
  printf("A:%d\n",A);
  printf("B:%d",B);
  return 0;
}