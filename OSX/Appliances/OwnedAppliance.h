//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Ryan Clark on 12/14/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance {
    NSMutableSet *ownerNames;
}

// The designated initializer
- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n;
- (void)addOwnerNamesObject:(NSString *)n;
- (void)removeOwnerNamesObject:(NSString *)n;

@end
