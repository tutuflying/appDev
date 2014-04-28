//
//  Device.h
//  SmartTest
//
//  Created by Eric Zhao on 14-4-28.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Device : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * comment;
@property (nonatomic, retain) NSString * macId;
@property (nonatomic, retain) NSString * imagePath;

@end
