//
//  WebViewController.h
//  LaunchPad Example App
//
//  Copyright (c) 2013 Taplytics. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIWebView* webView;

- (IBAction)dismissViewCont:(id)sender;

@end
