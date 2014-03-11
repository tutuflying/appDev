//
//  ScaryBugData.m
//  ScaryBugs
//
//  Created by Eric Zhao on 14-3-11.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "ScaryBugData.h"

@implementation ScaryBugData

@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString *)title rating:(float)rating {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
