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
    
    if ([Device checkDeviceExistByMacId:@"test3"]) {

    } else {
        KWTTDAppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
        NSManagedObjectContext *context = [appDelegate managedObjectContext];
        
        Device *device = (Device *)[NSEntityDescription
                                    insertNewObjectForEntityForName:@"Device"
                                    inManagedObjectContext:context];
        
        NSNumber *userId = [NSNumber numberWithInt:12345];
        [device addDeviceName:@"test3" MacId:@"test3" Comment:@"test" ImgPath:@"test" UserId:userId];
    }
    
    [self.navigationController popToRootViewControllerAnimated:YES];

}

- (IBAction)textFieldHide:(id)sender {
    [sender resignFirstResponder];
}

@end
