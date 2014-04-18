//
//  BIDBlueViewController.m
//  View Switcher
//
//  Created by Eric Zhao on 14-4-18.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "BIDBlueViewController.h"

@interface BIDBlueViewController ()

@end

@implementation BIDBlueViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)blueButtonPressed {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"blue" message:@"blue" delegate:nil cancelButtonTitle:@"Yep,I did." otherButtonTitles:nil];
    [alert show];
}

@end
