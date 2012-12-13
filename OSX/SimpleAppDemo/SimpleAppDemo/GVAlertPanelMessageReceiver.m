//
//  GVAlertPanelMessageReceiver.m
//  SimpleAppDemo
//
//  Created by Ryan Clark on 12/13/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "GVAlertPanelMessageReceiver.h"

@implementation GVAlertPanelMessageReceiver

-(void)message1
{
    NSRunAlertPanel([NSString stringWithFormat:@"Message1, %@", name] , @"Hello from Message #1!", @"OK", NULL, NULL);
}

-(void)message2
{
    NSRunAlertPanel([NSString stringWithFormat:@"Message2, %@", name] , @"Hello from Message #2!", @"OK", NULL, NULL);
}

-(void)message3:(NSString*)msg
{
    NSRunAlertPanel([NSString stringWithFormat:@"Message3, %@", name] , msg, @"OK", NULL, NULL);
}


@end

