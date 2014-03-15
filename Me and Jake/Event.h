//
//  Party.h
//  Me and Jake
//
//  Created by Dylan Humphrey on 3/13/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "User.h"

@class User;

@interface Event : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *eventLocation;
@property (nonatomic, weak)NSDate *eventDate;
@property (nonatomic, getter = isPrivate) BOOL *Private;
@property (nonatomic, getter = isBYOB)BOOL *BYOB;
@property (nonatomic, strong)NSMutableArray *hosts;
@property (nonatomic, strong)NSMutableArray *attending;
@property (nonatomic)long *cost;

- (NSMutableArray*)getArrived;
- (CLLocation*)getMapLocation;

- (void)addGuest:(User*)u;
- (void)removeGuest:(User*)u;
- (void)addHost:(User*)u;
- (void)removeHost:(User*)u;

@end
