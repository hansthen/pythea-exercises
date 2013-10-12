#include <stdio.h>

int main(int argn, char** argv) {
    char * s = "123";
    char * format = "%d";
    int * result;
    sscanf(s,format,result);
    printf("%x\n", *result); 
}
