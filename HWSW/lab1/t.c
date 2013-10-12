#include <stdio.h>

int sign(int x) 
{
   int a = ((x >> 31) | !!x);
   printf("%d: %d\n", x, a);
}

int test(int x, int n) 
{
   int shift = n << 3;
   int a = (x & (0xff << shift)) >> shift;
   printf("%x,%d: %x\n", x, n, a);
}

int lshift(int x, int n)
{
  int shift = n + ~0;
  int mask = ~((0x1 << 31) >> (n + ~0));
  mask = mask | (shift >> 31);
  printf("n     : %d\n", n);
  printf("shift : %x\n", shift);
  printf("mask  : %x\n", mask);
  return (x >> n) & mask;
}

int cond(int x, int y, int z) 
{
  x = !!x;
  printf("0x%x\n", (x << 31) >> 31);
  printf("0x%x\n", (!x << 31) >> 31);
  printf("0x%x\n", ((x << 31) >> 31) & y);
  printf("0x%x\n", ((!x << 31) >> 31) & z);
  printf("result: 0x%x\n", (((x << 31) >> 31) & y) + (((!x << 31) >> 31) & z));
}

int bang(int x) 
{
  return ((x | (~x + 1)) >> 31) + 1;
}

int fits(int x, int n)
{
  printf("fits %d,%d\n", x, n);
  int neg = x >> 31;
  x = ((neg << 31) >> 31 & ~x) + ((!neg << 31) >> 31 & x);
  int shift = n + ~0;
  int remainder = x >> shift;
  return ! remainder;
}

int cast(int i, long int l) 
{
   return i == ((int) l);
}

int main(int argc, char** argv) 
{
  int n = 0xFFFFFFF1;
  long l = 0xFFFFFFFFFF;
  printf("result :%d\n", cast(n,l));
}
