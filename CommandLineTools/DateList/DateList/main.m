//
//  main.m
//  DateList
//
//  Created by Ryan Clark on 12/6/12.
//  Copyright (c) 2012 Ryan Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate * yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // Createa an empty array
        NSMutableArray *dateList = [NSMutableArray array];
        
        // Add the dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        // Put yesterday at the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is the date: %@", d);
        }
        
        // Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateList objectAtIndex:0]);
    }
    return 0;
}

