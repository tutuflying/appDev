//
//  KWTTDNavViewController.h
//  SmartHome
//
//  Created by Eric Zhao on 14-4-28.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KWTTDNavViewController : UIViewController
@property (weak, nonatomic) IBOutlet UINavigationBar *bar;
@property (weak, nonatomic) IBOutlet UINavigationItem *add;

- (IBAction)showAddDevice:(id)sender;

@end
