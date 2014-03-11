//
//  ScaryBugData.h
//  ScaryBugs
//
//  Created by Eric Zhao on 14-3-11.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating;

@end
