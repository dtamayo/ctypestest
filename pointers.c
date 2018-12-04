#include <stdio.h>
#include <stdlib.h>

#define PRINT_MSG_2SX(ARG0, ARG1) printf("%s : 0x%016llX\n", ARG0, (unsigned long long)ARG1)

typedef struct Effect {
    int i;
    void* ptr;
} Effect;

void print_ptraddress(void** ptraddress){
    PRINT_MSG_2SX("Address of Pointer:", ptraddress);
}

Effect* get_effect(){
    Effect* pEffect = malloc(sizeof(*pEffect));
    pEffect->ptr = NULL;
    print_ptraddress(&pEffect->ptr);
    return pEffect;
}

