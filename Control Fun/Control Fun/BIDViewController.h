//
//  BIDViewController.h
//  Control Fun
//
//  Created by Eric Zhao on 14-4-16.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController <UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UITextField *number;
@property (weak, nonatomic) IBOutlet UITextField *name;
- (IBAction)editFinish:(id)sender;
- (IBAction)backgroundTab:(id)sender;
- (IBAction)sliderChange:(UISlider *)sender;
- (IBAction)switchChanges:(UISwitch *)sender;
- (IBAction)switchButton:(UISegmentedControl *) sender;
- (IBAction)buttonPressed:(UIButton *)sender;

//todo page 80

@end
