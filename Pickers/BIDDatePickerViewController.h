//
//  BIDDatePickerViewController.h
//  Pickers
//
//  Created by Eric Zhao on 14-4-21.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDDatePickerViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)buttonPressed;

@end