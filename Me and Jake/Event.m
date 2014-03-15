//
//  Party.m
//  Me and Jake
//
//  Created by Dylan Humphrey on 3/13/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "Event.h"

@implementation Event

@synthesize name, eventDate, eventLocation, Private, BYOB, hosts, attending;

- (NSMutableArray*)getArrived{
    NSMutableArray *myArray = attending;
    for (int i = myArray.count - 1; i > 0; i--){
        User *temp = myArray[i];
        if (!([temp hasArrived:self]))
            [myArray removeObjectAtIndex:i];
    }
    return myArray;
}
- (void)addGuest:(User*)u{
    [attending insertObject:u atIndex:0];
}
- (void)removeGuest:(User*)u{
    [attending removeObject:u];
}
- (void)addHost:(User*)u{
    [hosts insertObject:u atIndex:0];
}
- (void)removeHost:(User*)u{
    [hosts removeObject:u];
}
- (CLLocation*)getMapLocation{
    //implement method to convert the string <eventLocation> into a CLLocation using a geocoder
    //possibly make return a NSMutableArray with CLLocations, display those in a map or in a table view and have user pick the correct location
    //for now, just return some location
    CLLocation *location = [[CLLocation alloc]initWithLatitude:10 longitude:10];
    return location;
}

@end
