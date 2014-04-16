//
//  DetailViewController.h
//  history
//
//  Created by Eric Zhao on 14-3-17.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
