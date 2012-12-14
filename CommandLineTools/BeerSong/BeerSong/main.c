//
//  main.c
//  BeerSong
//
//  Created by Ryan Clark on 12/5/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#include <stdio.h>

void singTheSong(int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("There are simplt no more bottles of beer on the wall.\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n", oneFewer);
        singTheSong(oneFewer); //this function calls itself!
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[])
{

    singTheSong(99);
    return 0;
}

