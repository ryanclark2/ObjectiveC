//
//  Employee.m
//  BMITime
//
//  Created by Ryan Clark on 12/6/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

- (void)addAssetsObject:(Asset *)a
{
    // Is asset nil?
    if (!assets) {
        
        // Create the array
        assets = [[NSMutableSet alloc] init];
        
    }
    [assets addObject:a];
    [ a setHolder:self];
}

- (unsigned int)valueOfAssets
{
    // Sum up value of the assets
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",
            [self employeeID], [self valueOfAssets]];
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
