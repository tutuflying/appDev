//
//  KWTTDDetailViewController.m
//  SmartTest
//
//  Created by Eric Zhao on 14-4-28.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "KWTTDDetailViewController.h"

@interface KWTTDDetailViewController ()
- (void)configureView;
@end

@implementation KWTTDDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
