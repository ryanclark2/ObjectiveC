//
//  main.c
//  Affirmation
//
//  Created by Ryan Clark on 12/17/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
    if (argc != 3) {
        fprintf(stderr, "Usage: Affirmation <name> <number>\n");
        return 1;
    }
    
    int count = atoi(argv[2]);
    for (int i = 0; i < count; i++) {
        printf("%s is cool.\n", argv[1]);
    }
    return 0;
}

