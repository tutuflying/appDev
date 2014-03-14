//
//  DeviceInfo.h
//  smart
//
//  Created by Eric Zhao on 14-3-14.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DeviceInfo : NSObject

@property (strong) NSString *deviceNmae;
@property (strong) NSString *deviceSN;
@property (strong) UIImage *deviceImage;

- (id)name:(NSString*) deviveName SN:(NSString*)deviceSN deviceImage:(UIImage*) deviceImage;


@end
