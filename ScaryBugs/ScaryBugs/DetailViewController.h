//
//  DetailViewController.h
//  ScaryBugs
//
//  Created by Eric Zhao on 14-3-11.
//  Copyright (c) 2014 Eric Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end