//
//  LSIContactController.m
//  Contact-MSR
//
//  Created by Iyin Raphael on 3/13/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "LSIContactController.h"
#import "LSIContact.h"

@interface LSIContactController()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation LSIContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createContactName:(NSString *)name emailAddress:(NSString *)emailAddress
{
    LSIContact *contact = [[LSIContact alloc] initWithName:name emailAddress:emailAddress];
    [self.internalContacts addObject:contact];
}

- (void)updateContact:(LSIContact *)contact name:(NSString *)name emailAddress:(NSString *)emailAddress
{
    contact.name = name;
    contact.emailAddress = emailAddress;
}

- (NSArray *)contact
{
    return self.internalContacts;
}

@end
