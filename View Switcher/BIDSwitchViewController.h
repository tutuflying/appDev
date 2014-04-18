//
//  BIDSwitchViewController.h
//  View Switcher
//
//  Created by Eric Zhao on 14-4-17.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDBlueViewController;
@class BIDYellowViewController;

@interface BIDSwitchViewController : UIViewController

@property(strong,nonatomic) BIDBlueViewController *blueViewController;
@property(strong,nonatomic) BIDYellowViewController *yellowViewController;

- (IBAction)switchViews:(id)sender;

@end
