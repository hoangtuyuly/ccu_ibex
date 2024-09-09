#include <stdio.h>
#include <stdint.h>
#include "cfu.h"
int main(int argc, char *argv[]) {

  // puts("Fibonnaci Numbers");
  // puts("-----------------");
  // for (int i = 0; i < 8; i++) {
  //   printf("%2d:", i * 6);
  //   for (int j = 0; j < 6; j++) {
  //     printf(" %11lu", cfu_op3(0, i * 6 + j, 0));
  //   }
  //   puts("");
  // }

  int a,b,c;
  a = 5;
  b = 2;
  
  c = cfu(a, b);

  return 0;
}


