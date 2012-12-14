//
//  main.c
//  Addresses
//
//  Created by Ryan Clark on 12/5/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(addressOfI));
    return 0;
}

