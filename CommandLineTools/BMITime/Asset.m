//
//  Asset.m
//  BMITime
//
//  Created by Ryan Clark on 12/9/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;

- (NSString *) description
{
    // Is holder non-nil?
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                [self label], [self resaleValue], [self holder]];
    }
    else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                [self label], [self resaleValue]];
    }

}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
