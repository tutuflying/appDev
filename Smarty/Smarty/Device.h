//
//  Device.h
//  Smarty
//
//  Created by Eric Zhao on 14-4-30.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "KWTTDAppDelegate.h"


@interface Device : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * macId;
@property (nonatomic, retain) NSString * comment;
@property (nonatomic, retain) NSString * imgPath;
@property (nonatomic, retain) NSNumber * userId;

+ (BOOL)checkDeviceExistByMacId:(NSString *)macId;
- (void)addDeviceName:(NSString *)name MacId:(NSString *)macId Comment:(NSString*)comment
                         ImgPath:(NSString *)imgPath UserId:(NSNumber *) userId;
+ (NSArray*)getDevices;


@end
