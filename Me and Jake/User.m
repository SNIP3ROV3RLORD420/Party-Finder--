//
//  User.m
//  Me and Jake
//
//  Created by Dylan Humphrey on 3/13/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "User.h"

@implementation User

@synthesize username, password, name, userLocation, interestIn, birthday;

- (BOOL)hasArrived:(Event *)e{
    NSString *eventLocation = e.eventLocation;
    //implement method to determine when the person has arrived within a 500 yard radius of the event
    //for now just return true
    return YES;
}

@end
