//
//  GVMessageReceiverBase.m
//  SimpleAppDemo
//
//  Created by Ryan Clark on 12/13/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import "GVMessageReceiverBase.h"

@implementation GVMessageReceiverBase

-(id)initWithName:(NSString *)newName{
    self = [super init];
    if(self)
    {
        name = newName;
    }
    
    return self;
}


-(void)message1
{
    
}

-(void)message2
{
    
}

-(void)message3:(id)msg
{
    
}

-(NSString *) description {
    return [NSString stringWithFormat:@"Message Receiver: %@",name];
}

@end
