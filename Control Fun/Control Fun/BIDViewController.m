//
//  BIDViewController.m
//  Control Fun
//
//  Created by Eric Zhao on 14-4-16.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _sliderLabel.text = @"50";
    _button.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editFinish:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)backgroundTab:(id)sender {
    [self.name resignFirstResponder];
    [self.number resignFirstResponder];
}

- (IBAction)sliderChange:(UISlider *)sender {
    long progress = lroundf(sender.value * 100);
    _sliderLabel.text = [NSString stringWithFormat:@"%ld", progress];
}

- (IBAction)switchChanges:(UISwitch *)sender {
    BOOL setting = sender.isOn;
    [_leftSwitch setOn:setting animated:YES];
    [_rightSwitch setOn:setting animated:YES];
}


- (IBAction)switchButton:(UISegmentedControl *) sender {
    long index = sender.selectedSegmentIndex;
    if (index == 0) {
        _leftSwitch.hidden = NO;
        _rightSwitch.hidden = NO;
        _button.hidden = YES;
    } else {
        _leftSwitch.hidden = YES;
        _rightSwitch.hidden = YES;
        _button.hidden = NO;

    }
}


- (IBAction)buttonPressed:(UIButton *)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure?" delegate:self cancelButtonTitle:@"No way!" destructiveButtonTitle:@"Yes,I'm sure" otherButtonTitles:nil
                                  ];
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSString *msg = nil;
    if (buttonIndex != [actionSheet cancelButtonIndex]) {
        msg = [NSString stringWithFormat:@"You can breathe easy, %@, everything went OK.", _name.text];
    } else {
        msg = @"You can breathe easy, everyting is OK.";
    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something was done." message:msg delegate:self cancelButtonTitle:@"Phew!" otherButtonTitles:nil, nil];
    [alert show];
}

@end
