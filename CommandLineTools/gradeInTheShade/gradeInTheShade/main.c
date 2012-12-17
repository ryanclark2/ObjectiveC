//
//  main.c
//  gradeInTheShade
//
//  Created by Ryan Clark on 12/17/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> // malloc(), free()

float averageFloats(float data[], int dataCount)
{
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++) {
        sum = sum + data[i];
    }
    return sum / dataCount;
}

int main(int argc, const char * argv[])
{
    
    // Declares the array as part of the frame
    float gradeBook[] = {60.2, 94.5, 81.1};
    
    // Calculate the average
    float average = averageFloats(gradeBook, 3);
    
    // No need to free the array!
    // Cleanup happens automatically when the function returns
    
    printf("Average = %.2f\n", average);
}

