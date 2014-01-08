//
//  WebViewController.m
//  LaunchPad Example App
//
//  Copyright (c) 2013 Taplytics. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.viewKey = @"WebViewController";
    
    NSURL* url = [NSURL URLWithString:@"http://www.launchpad.io"];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
}

- (void)dismissViewCont:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
