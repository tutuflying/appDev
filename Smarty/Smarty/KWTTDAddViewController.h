//
//  KWTTDAddViewController.h
//  Smarty
//
//  Created by Eric Zhao on 14-4-29.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Device.h"

@interface KWTTDAddViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *deviceName;

- (IBAction)addDevice:(id)sender;
- (IBAction)textFieldHide:(id)sender;

@end
