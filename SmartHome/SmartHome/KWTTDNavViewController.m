//
//  KWTTDNavViewController.m
//  SmartHome
//
//  Created by Eric Zhao on 14-4-28.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "KWTTDNavViewController.h"
#import "KWTTDAddViewController.h"

@interface KWTTDNavViewController ()

@property (strong, nonatomic) KWTTDAddViewController *addDevice;

@end

@implementation KWTTDNavViewController

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
    
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(showAddDevice:)];
    self.add.rightBarButtonItem = addItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAddDevice:(id)sender {
    self.addDevice = [self.storyboard instantiateViewControllerWithIdentifier:@"Add"];
    [self.view insertSubview:self.addDevice.view atIndex:0];
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
