//
//  main.c
//  Degrees
//
//  Created by Ryan Clark on 12/5/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

//Declare a static variable
static float lastTemperature = 50.0;

float fahrenheitFromCelcius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celcius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelcius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit\n", freezeInF);
    printf("The last temperature converted was %f\n", lastTemperature);
    return EXIT_SUCCESS;
}

