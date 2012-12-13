//
//  GVLoggingMessageReceiver.m
//  SimpleAppDemo
//
//  Created by Ryan Clark on 12/13/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "GVLoggingMessageReceiver.h"

@implementation GVLoggingMessageReceiver

-(void)message1
{
    NSLog(@"message1 from %@.", name);
}

-(void)message2
{
    NSLog(@"message2 from %@.",name);
}

-(void)message3:(id)msg
{
    NSLog(@"custom message from %@: %@",name, msg);
}

-(NSString *) description {
    return [NSString stringWithFormat:@"Message Receiver: %@",name];
}

@end
