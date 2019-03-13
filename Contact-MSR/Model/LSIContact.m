//
//  LSIContact.m
//  Contact-MSR
//
//  Created by Iyin Raphael on 3/13/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "LSIContact.h"

@interface LSIContact()

@end


@implementation LSIContact

- (instancetype)initWithName:(NSString *)name emailAddress:(NSString *)emailAddress
{
    self = [super self];
    if (self) {
        self.name = name;
        self.emailAddress = emailAddress;
    }
    return self;
}



@end
