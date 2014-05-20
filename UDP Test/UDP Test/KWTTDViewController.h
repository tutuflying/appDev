//
//  KWTTDViewController.h
//  UDP Test
//
//  Created by Eric Zhao on 14-5-20.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncUdpSocket.h"

@interface KWTTDViewController : UIViewController
@property (nonatomic, strong) AsyncUdpSocket *socket;

-(void)initSocket;
-(IBAction)Send:(id)sender;

@end
