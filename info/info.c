
#include <stdio.h>
#include <pd.h>

int main(void) {
  printf("\nHello world!");
  printf("\nCPU: %s", pd_cpu());
  printf("\nBOARD: %s", pd_board());
  printf("\nPLATFORM: %s", pd_platform());
  printf("\n");
  return 0;
}
