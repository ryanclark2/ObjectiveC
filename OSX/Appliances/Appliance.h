//
//  Appliance.h
//  Appliances
//
//  Created by Ryan Clark on 12/14/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject {
    NSString *productName;
    int voltage;
}
@property (copy) NSString *productName;
@property int voltage;

// The designated initializer
- (id) initWithProductName:(NSString *)pn;

@end
