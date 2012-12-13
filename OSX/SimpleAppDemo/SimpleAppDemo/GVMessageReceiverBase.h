//
//  GVMessageReceiverBase.h
//  SimpleAppDemo
//
//  Created by Ryan Clark on 12/13/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GVMessageReceiverBase : NSObject
{
    NSString *messageText;
    NSString *name;
}

-(id)initWithName:(NSString*)name;
- (void)message1;
- (void)message2;
- (void)message3:(NSString*)message;

@end
