//
//  Person.m
//  BMITime
//
//  Created by Ryan Clark on 12/6/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
