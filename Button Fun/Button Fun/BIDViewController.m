//
//  BIDViewController.m
//  Button Fun
//
//  Created by Eric Zhao on 14-4-16.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *plainText = [NSString stringWithFormat:@"%@ button is pressed.", title];
    
    NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc] initWithString:plainText];
    NSDictionary *attributes = @{
                                 NSFontAttributeName: [UIFont boldSystemFontOfSize:_statusLabel.font.pointSize]
                                };
    
    NSRange nameRange = [plainText rangeOfString:title];
    
    [styledText setAttributes:attributes range:nameRange];
    
    _statusLabel.attributedText = styledText;
}
@end
