//
//  KWTTDViewController.m
//  UDP Test
//
//  Created by Eric Zhao on 14-5-20.
//  Copyright (c) 2014年 Eric Zhao. All rights reserved.
//

#import "KWTTDViewController.h"

@interface KWTTDViewController ()

@end

@implementation KWTTDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self initSocket];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initSocket {
    self.socket = [[AsyncUdpSocket alloc] initWithDelegate:self];
	
	NSError *error = nil;
	
	if (![self.socket bindToPort:0 error:&error])
	{
		NSLog(@"Error binding: %@", error);
		return;
	}
	
	[self.socket receiveWithTimeout:-1 tag:0];
	
	NSLog(@"Ready");
}

-(IBAction)Send:(id)sender {
    NSString *host = @"115.236.16.74";
	
	int port = 2441;
	
	NSString *msg = @"1";
	
	NSData *data = [msg dataUsingEncoding:NSUTF8StringEncoding];
	[self.socket sendData:data toHost:host port:port withTimeout:-1 tag:0];
	
	NSLog(@"SENT: %@", msg);
}

- (void)onUdpSocket:(AsyncUdpSocket *)sock didSendDataWithTag:(long)tag
{
	// You could add checks here
}

- (void)onUdpSocket:(AsyncUdpSocket *)sock didNotSendDataWithTag:(long)tag dueToError:(NSError *)error
{
	// You could add checks here
}

- (BOOL)onUdpSocket:(AsyncUdpSocket *)sock
     didReceiveData:(NSData *)data
            withTag:(long)tag
           fromHost:(NSString *)host
               port:(UInt16)port
{
	NSString *msg = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	if (msg)
	{
		NSLog(@"RECV: %@", msg);
	}
	else
	{
		NSLog(@"RECV: Unknown message from: %@:%hu", host, port);
	}
	
	[self.socket receiveWithTimeout:-1 tag:0];
	return YES;
}

@end
