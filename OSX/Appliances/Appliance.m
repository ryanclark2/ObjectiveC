//
//  Appliance.m
//  Appliances
//
//  Created by Ryan Clark on 12/14/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize productName, voltage;

-(id)initWithProductName:(NSString *)pn
{
    // Call the NSObject's init method
    self = [super init];
    
    // Did it return something non-nil?
    if (self) {
        
        // Set the product name
        [self setProductName:pn];
        
        // Give voltage a starting value
        [self setVoltage:120];
    }
    return self;
}

- (id)init
{
    return [self initWithProductName:@"Unknown"];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", productName, voltage];
}

@end
