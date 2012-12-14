//
//  Person.h
//  BMITime
//
//  Created by Ryan Clark on 12/6/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

// You will be able to set those instance variables
@property float heightInMeters;
@property int weightInKilos;

- (float)bodyMassIndex;
@end
