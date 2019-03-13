//
//  LSIContact.h
//  Contact-MSR
//
//  Created by Iyin Raphael on 3/13/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIContact : NSObject

-(instancetype) initWithName: (NSString *)name emailAddress: (NSString *)emailAddress;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *emailAddress;

@end

NS_ASSUME_NONNULL_END
