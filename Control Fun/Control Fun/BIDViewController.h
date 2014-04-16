//
//  BIDViewController.h
//  Control Fun
//
//  Created by Eric Zhao on 14-4-16.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *number;
@property (weak, nonatomic) IBOutlet UITextField *name;
- (IBAction)editFinish:(id)sender;
- (IBAction)backgroundTab:(id)sender;

@end
