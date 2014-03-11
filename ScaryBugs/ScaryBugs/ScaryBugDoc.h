//
//  ScaryBugDoc.h
//  ScaryBugs
//
//  Created by Eric Zhao on 14-3-11.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ScaryBugData;

@interface ScaryBugDoc : NSObject

@property (strong) ScaryBugData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *) fullImage;

@end
