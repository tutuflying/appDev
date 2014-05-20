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

-(void) viewWillAppear:(BOOL)animated {
//    ZBarReaderViewController *reader = [ZBarReaderViewController new];
//    reader.readerDelegate = self;
//    [reader.scanner setSymbology: ZBAR_QRCODE
//                          config: ZBAR_CFG_ENABLE
//                              to: 0];
//    reader.readerView.zoom = 1.0;
//    [self presentModalViewController: reader
//                            animated: YES];
    
    ZBarReaderController * reader = [ZBarReaderController new];
    ZBarImageScanner * scanner = reader.scanner;
    reader.readerDelegate = self;
    [scanner setSymbology:ZBAR_I25 config:ZBAR_CFG_ENABLE to:0];
    
    reader.showsZBarControls = YES;
    
    [self presentViewController:reader animated:YES completion:nil];
}

- (void) imagePickerController: (UIImagePickerController*) picker
 didFinishPickingMediaWithInfo: (NSDictionary*) info
{
    id<NSFastEnumeration> results = [info objectForKey:ZBarReaderControllerResults];
    ZBarSymbol * symbol;
    for(symbol in results)
        break;
    [picker dismissViewControllerAnimated:YES completion:nil];
    self.macId.text = symbol.data;
}

//取消按钮方法
- (void) imagePickerControllerDidCancel:(UIImagePickerController*)picker {
    NSLog(@"test");
    [picker dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
