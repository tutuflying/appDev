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
@end
