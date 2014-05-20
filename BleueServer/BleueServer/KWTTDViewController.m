//
//  KWTTDViewController.m
//  BleueServer
//
//  Created by Eric Zhao on 14-5-14.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "KWTTDViewController.h"

@interface KWTTDViewController ()

@end

static NSString * const kServiceUUID = @"A82BBB52-F59E-4401-8800-983F2132DE98";
static NSString * const kCharacteristicUUID = @"729901CE-3858-40DA-B1BC-A7C813C2C4DB";

@implementation KWTTDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.manager = [[CBPeripheralManager alloc] initWithDelegate:self queue:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral {
    switch (peripheral.state) {
        case CBPeripheralManagerStatePoweredOn:
            [self setupService];
            break;
            
        default:
            NSLog(@"Peripheral Manager did change state");
            break;
    }
}

-(void) setupService {
    // Creates the characteristic UUID
    CBUUID *characteristicUUID = [CBUUID UUIDWithString:kCharacteristicUUID];
    // Creates the characteristic
    self.customCharacteristic = [[CBMutableCharacteristic alloc] initWithType:characteristicUUID properties:CBCharacteristicPropertyNotify value:nil permissions:CBAttributePermissionsReadable];
    // Creates the service UUID
    CBUUID *serviceUUID = [CBUUID UUIDWithString:kServiceUUID];
    // Creates the service and adds the characteristic to it
    self.customService = [[CBMutableService alloc] initWithType:serviceUUID primary:YES];
    // Sets the characteristics for this service
    [self.customService setCharacteristics:@[self.customCharacteristic]];
    // Publishes the service
    [self.manager addService:self.customService];
}


@end
