//
//  KWTTDDeviceViewController.m
//  Smarty
//
//  Created by Eric Zhao on 14-4-30.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "KWTTDDeviceViewController.h"

@interface KWTTDDeviceViewController ()

@end

@implementation KWTTDDeviceViewController

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
    self.macId.text = [NSString stringWithFormat:
                       @"This is the detail view for %@.",
                       [self.item valueForKey:@"macId"]];
    self.title = [self.item valueForKey:@"macId"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
