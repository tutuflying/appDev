//
//  MasterViewController.h
//  smart
//
//  Created by Eric Zhao on 14-3-14.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ZBarSDK.h"

@interface MasterViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)insertNewObject:(id)sender;
@end

