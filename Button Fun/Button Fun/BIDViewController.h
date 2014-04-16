//
//  BIDViewController.h
//  Button Fun
//
//  Created by Eric Zhao on 14-4-16.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
- (IBAction)buttonPressed:(UIButton *)sender;

@end
