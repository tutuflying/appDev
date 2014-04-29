//
//  KWTTDAddViewController.m
//  Smarty
//
//  Created by Eric Zhao on 14-4-29.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "KWTTDAddViewController.h"
#import "Device.h"

@interface KWTTDAddViewController ()

@end

@implementation KWTTDAddViewController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addDevice:(id)sender {
    Device *device = (Device *)[NSEntityDescription
                                insertNewObjectForEntityForName:@"Device"
                                inManagedObjectContext:self.myDelegate.managedObjectContext];
    [device setName:self.deviceName.text];
    
    [self.myDelegate saveContext];
}

- (IBAction)textFieldHide:(id)sender {
    [sender resignFirstResponder];
}

@end
