//
//  LSIContactViewController.m
//  Contact-MSR
//
//  Created by Iyin Raphael on 3/13/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "LSIContactViewController.h"
#import "LSIContactController.h"
#import "LSIContact.h"


@interface LSIContactViewController ()
    
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)save:(id)sender;
- (void) updateView;


@end

@implementation LSIContactViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateView];
}


- (void)updateView
{
    if (self.contact) {
        [self setTitle: self.contact.name];
        self.contact.name = self.textField.text;
        self.contact.emailAddress = self.textView.text;
    } else {
        [self setTitle:@"Add New Contact"];
    }
    
}


- (IBAction)save:(id)sender {
    NSString *name = self.textField.text;
    NSString *emailAddress = self.textView.text;
    
    if (name && ![name isEqualToString:@""] && ![emailAddress isEqualToString:@""]) {
        [self.controller updateContact: _contact name:name emailAddress:emailAddress];
    } else {
        [self.controller createContactName:name emailAddress:emailAddress];
    }
    [self.navigationController popViewControllerAnimated:YES];
}
@end
