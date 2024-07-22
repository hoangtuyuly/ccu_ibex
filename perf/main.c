#include <stdio.h>
#include <stdint.h>

int main(int argc, char *argv[]) {

  int a,b,c;
  a = 5;
  b = 2;
  
  // asm volatile
  // (
  //   "mod   %[z], %[x], %[y]\n\t"
  //   : [z] "=r" (c)
  //   : [x] "r" (a), [y] "r" (b)
  // );
 
  // if ( c != 1 ){
  //    printf("\n[[FAILED]]\n");
  //    return -1;
  // }

  unsigned result;
  asm volatile("csrr %0, cycle" : "=r"(result));
  
  // printf("\n[[PASSED]]\n");

  return 0;
}
