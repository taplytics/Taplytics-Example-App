//
//  LPExampleAppViewController.m
//  LaunchPad Example App
//
//  Copyright (c) 2013 LaunchPad. All rights reserved.
//

#import "LPExampleAppViewController.h"

@interface LPExampleAppViewController ()

@end

@implementation LPExampleAppViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [[LaunchPadManager sharedManager] setupViewController:self forViewKey:@"home"];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
