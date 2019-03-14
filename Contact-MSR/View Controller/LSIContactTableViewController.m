//
//  LSIContactTableViewController.m
//  Contact-MSR
//
//  Created by Iyin Raphael on 3/13/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "LSIContactTableViewController.h"
#import "LSIContact.h"
#import "LSIContactController.h"
#import "LSIContactViewController.h"

@interface LSIContactTableViewController ()

@property LSIContactController *controller;

@end

@implementation LSIContactTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _controller = [[LSIContactController alloc] init];
    
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_controller.contacts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    LSIContact *contact = [self.controller.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.emailAddress;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
       
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier  isEqual: @"showContact"]){
        LSIContactViewController *detailVC = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        LSIContact *contact = [self.controller.contacts objectAtIndex:indexPath.row];
        detailVC.controller = self.controller;
        detailVC.contact = contact;
    } else if ([segue.identifier isEqualToString:@"addContact"]){
        LSIContactViewController *detailVC = segue.destinationViewController;
        detailVC.controller = self.controller;

    }
}

@end
