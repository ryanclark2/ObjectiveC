//
//  GVMessageController.h
//  SimpleAppDemo
//
//  Created by Ryan Clark on 12/13/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GVMessageReceiverBase.h"


@class GVMessageReceiverBase;

@interface GVMessageController : NSObject{
    NSUInteger selectedMethodIndex;
    GVMessageReceiverBase *selectedReceiver;
    NSArray *receivers;
    NSString *messageText;
    
    IBOutlet NSButton *helloButton;
    IBOutlet NSMatrix *messageRadio;
    IBOutlet NSPopUpButton *receiverPopUp;
    IBOutlet NSTextField *customMessage;
    IBOutlet NSTextField *labelMessage;
    IBOutlet NSTextField *labelReceiver;
}

@property NSUInteger selectedMethodIndex;
@property (strong) GVMessageReceiverBase *selectedReceiver;
@property (readonly, strong) NSArray *receiverList;

-(id)initWithMessageReceivers:(NSArray*)newReceivers;
-(IBAction)sendMessage:(id)sender;
-(IBAction)switchReceiver:(id)sender;
-(IBAction)switchMessage:(id)sender;

@end