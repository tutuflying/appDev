//
//  ViewController.m
//  test
//
//  Created by Eric Zhao on 14-3-13.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showStatus;
- (IBAction)buttonPressed:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *text = [NSString stringWithFormat:@"%@ button pressed.", title];
    self.showStatus.text = text;
}
@end
