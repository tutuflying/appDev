//
//  BIDAppDelegate.h
//  View Switcher
//
//  Created by Eric Zhao on 14-4-17.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDSwitchViewController;
@interface BIDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BIDSwitchViewController *switchViewController;

@end
