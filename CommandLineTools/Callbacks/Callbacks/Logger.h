//
//  Logger.h
//  Callbacks
//
//  Created by Ryan Clark on 12/10/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject {
    NSMutableData *incomingData;
}
- (void) sayOuch: (NSTimer *)t;
@end
