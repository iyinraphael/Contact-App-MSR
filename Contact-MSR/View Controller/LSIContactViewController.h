//
//  LSIContactViewController.h
//  Contact-MSR
//
//  Created by Iyin Raphael on 3/13/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LSIContactController.h"
#import "LSIContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSIContactViewController : UIViewController

@property LSIContactController *controller;
@property LSIContact *contact;


@end

NS_ASSUME_NONNULL_END
