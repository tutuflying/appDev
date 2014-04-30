//
//  Device.m
//  Smarty
//
//  Created by Eric Zhao on 14-4-30.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "Device.h"


@implementation Device

@dynamic name;
@dynamic macId;
@dynamic comment;
@dynamic imgPath;
@dynamic userId;

+ (BOOL)checkDeviceExistByMacId:(NSString *)macId {
    
    KWTTDAppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    NSEntityDescription *device = [NSEntityDescription entityForName:@"Device" inManagedObjectContext:context];
    [fetchRequest setEntity:device];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"macId == %@", macId];
    [fetchRequest setPredicate:predicate];
    [fetchRequest setFetchLimit:1];
    
    NSError *error = NULL;
    NSArray *array = [context executeFetchRequest:fetchRequest error:&error];
    if (error) {
        NSLog(@"Error : %@\n", [error localizedDescription]);
    }
    
    if (array && [array count] > 0) {
        return true;
    }
    
    fetchRequest = nil;

    return false;
}

- (void)addDeviceName:(NSString *)name MacId:(NSString *)macId Comment:(NSString*)comment
                  ImgPath:(NSString *)imgPath UserId:(NSNumber *) userId {
    
    KWTTDAppDelegate *appDelegate = [UIApplication sharedApplication].delegate;

    self.name = name;
    self.macId = macId;
    self.comment = comment;
    self.imgPath = imgPath;
    self.userId = userId;
    
    [appDelegate saveContext];

}

+ (NSArray*)getDevices {
    KWTTDAppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSFetchRequest *request = [[NSFetchRequest alloc]
                               initWithEntityName:@"Device"];
    NSError *error;
    NSArray *objects = [context executeFetchRequest:request error:&error];
    if (objects == nil) {
        NSLog(@"There was an error!");
        // Do whatever error handling is appropriate
    }
    
    return objects;
}

@end
