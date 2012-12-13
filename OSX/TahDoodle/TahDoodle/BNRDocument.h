//
//  BNRDocument.h
//  TahDoodle
//
//  Created by Ryan Clark on 12/12/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}
-(IBAction)createNewItem:(id)sender;

@end
