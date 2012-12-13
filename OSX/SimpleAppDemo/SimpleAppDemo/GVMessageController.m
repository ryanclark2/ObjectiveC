//
//  GVMessageController.m
//  SimpleAppDemo
//
//  Created by Ryan Clark on 12/13/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GVMessageController.h"
#import "GVLoggingMessageReceiver.h"
#import "GVAlertPanelMessageReceiver.h"

@implementation GVMessageController

@synthesize selectedReceiver;
@synthesize selectedMethodIndex;


-(id)initWithMessageReceivers:(NSArray*)newReceivers
{
    self = [super init];
    if(self){
        receivers = newReceivers;
    }
    
    return self;
}

-(NSArray*) getReceiverList
{
    if(!receivers)
        receivers = [[NSArray alloc] initWithObjects:[[GVAlertPanelMessageReceiver alloc] initWithName:@"Receiver1"],
                     [[GVAlertPanelMessageReceiver alloc] initWithName:@"Receiver2"],
                     nil];
    
    return receivers;
}


-(IBAction)sendMessage:(id)sender
{
    
    SEL method = NSSelectorFromString([NSString stringWithFormat:@"%@%ld", @"message", selectedMethodIndex]);
    SEL methodWithParam = NSSelectorFromString([NSString stringWithFormat:@"%@%ld:", @"message", selectedMethodIndex]);
    
    if ([selectedReceiver respondsToSelector:method] || [selectedReceiver respondsToSelector:methodWithParam]) {
        
        if(selectedMethodIndex != 3)
            [selectedReceiver performSelector:method];
        else
            [selectedReceiver performSelector:methodWithParam withObject:[customMessage stringValue]];
    }
    else
    {
        NSLog(@"Could not send message.");
    }
    
    
}


- (void)awakeFromNib
{
    //populate the popup-button drop-down with the correct values...
    for(id rec in [self getReceiverList])
        [receiverPopUp addItemWithTitle:[rec description]];
    
    //set the defaults...
    [receiverPopUp selectItemAtIndex:0];
    [self switchReceiver:receiverPopUp];
    [messageRadio selectCellAtRow:0 column:0];
    [self switchMessage:messageRadio];
    
}

-(IBAction)switchReceiver:(id)sender{
    selectedReceiver = [receivers objectAtIndex:[sender indexOfSelectedItem]];
    [labelReceiver  setStringValue:[selectedReceiver description]];
    NSLog(@"switch receiver called, selected receiver is %@.", selectedReceiver);
}

-(IBAction)switchMessage:(id)sender{
    selectedMethodIndex = [sender selectedRow] + 1;
    [labelMessage setStringValue:[NSString stringWithFormat:@"%lu",selectedMethodIndex]];
    NSLog(@"switch message called, selected messafe index is %ld", selectedMethodIndex);
}

@end
