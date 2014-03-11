//
//  MasterViewController.h
//  ScaryBugs
//
//  Created by Eric Zhao on 14-3-11.
//  Copyright (c) 2014 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong) NSMutableArray *bugs;

@end