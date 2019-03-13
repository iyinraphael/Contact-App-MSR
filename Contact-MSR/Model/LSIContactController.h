//
//  LSIContactController.h
//  Contact-MSR
//
//  Created by Iyin Raphael on 3/13/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSIContactController : NSObject

-(void) createContactName: (NSString *)name emailAddress: (NSString *)emailAddress;
-(void) updateContact: (LSIContact *)contact name: (NSString *)name emailAddress: (NSString *)emailAddress;
@property (nonatomic, readonly) NSArray *contact;

@end

NS_ASSUME_NONNULL_END
