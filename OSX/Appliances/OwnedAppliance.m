//
//  OwnedAppliance.m
//  Appliances
//
//  Created by Ryan Clark on 12/14/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n;
{
    // Call the superclass's initializer
    self = [super initWithProductName:pn];
    
    if (self) {
        // Make a set to hold owner names
        ownerNames = [[NSMutableSet alloc] init];
        
        // Is the first owner non-nil?
        if (n) {
            [ownerNames addObject:n];
        }
    }
    // Return a pointer to the new object
    return self;
}

- (void)addOwnerNamesObject:(NSString *)n
{
    [ownerNames addObject:n];
}

- (void)removeOwnerNamesObject:(NSString *)n
{
    [ownerNames removeObject:n];
}

- (id)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

@end
