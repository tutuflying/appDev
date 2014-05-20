//
//  KWTTDViewController.h
//  BleueServer
//
//  Created by Eric Zhao on 14-5-14.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface KWTTDViewController : UIViewController<CBPeripheralManagerDelegate>

@property (nonatomic, strong) CBPeripheralManager *manager;
@property (nonatomic, strong) CBMutableCharacteristic *customCharacteristic;
@property (nonatomic, strong) CBMutableService *customService;

- (void) peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral;
-(void) setupService;

@end
