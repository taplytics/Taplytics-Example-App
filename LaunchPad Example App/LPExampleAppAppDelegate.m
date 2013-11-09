//
//  LPExampleAppAppDelegate.m
//  LaunchPad Example App
//
//  Copyright (c) 2013 LaunchPad. All rights reserved.
//

#import "LPExampleAppAppDelegate.h"
#import "Mixpanel.h"
#import "Flurry.h"
#import "GAI.h"

#define LAUNCHPAD_TOKEN @"INSERT YOUR LAUNCHPAD TOKEN HERE"

#define MIXPANEL_TOKEN @"YOUR MIXPANEL TOKEN"
#define GOOGLE_TOKEN @"YOUR GOOGLE ANALYTICS TOKEN"
#define FLURRY_TOKEN @"YOUR FLURRY TOKEN"

@implementation LPExampleAppAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [LaunchPadManager startLaunchPadAPIKey:LAUNCHPAD_TOKEN liveUpdate:YES];
    
    // Initialize the library with your
    // Mixpanel project token, MIXPANEL_TOKEN
    [Mixpanel sharedInstanceWithToken:MIXPANEL_TOKEN];
    
    [Flurry startSession:FLURRY_TOKEN];
    [Flurry setLogLevel:FlurryLogLevelAll];
    
    [GAI sharedInstance].dispatchInterval = 5;
    
    [[[GAI sharedInstance] logger] setLogLevel:kGAILogLevelVerbose];
    
    [[GAI sharedInstance] trackerWithTrackingId:GOOGLE_TOKEN];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
