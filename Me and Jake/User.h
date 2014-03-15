//
//  User.h
//  Me and Jake
//
//  Created by Dylan Humphrey on 3/13/14.
//  Copyright (c) 2014 Dylan Humphrey. All rights reserved.
//

#import "Event.h"
#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@class Event;

@interface User : NSObject

@property(nonatomic, strong)NSString *username;
@property(nonatomic, strong)NSString *password;
@property(nonatomic, strong)NSString *name;
@property(nonatomic, strong)NSString *userLocation;
@property(nonatomic, strong)NSDate *birthday;
@property(nonatomic, strong)NSString *interestIn;

- (BOOL)hasArrived:(Event*)e;

@end
