//
//  AppDelegate.m
//  Taplytics Example App
//
//  Copyright (c) 2013 Taplytics. All rights reserved.
//

#import "AppDelegate.h"
#import "Mixpanel.h"
#import "Flurry.h"
#import "GAI.h"

#define TAPLYTICS_TOKEN @"YOUR TAPLYTICS TOKEN"

#define MIXPANEL_TOKEN @"YOUR MIXPANEL TOKEN"
#define GOOGLE_TOKEN @"YOUR GOOGLE ANALYTICS TOKEN"
#define FLURRY_TOKEN @"YOUR FLURRY TOKEN"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Override point for customization after application launch.
    [TaplyticsManager startTaplyticsAPIKey:TAPLYTICS_TOKEN server:TLLocalHost liveUpdate:YES];
    
    // Initialize Mixpanel Analytics
    [Mixpanel sharedInstanceWithToken:MIXPANEL_TOKEN];
    
    // Initialize Flurry Analytics
    [Flurry startSession:FLURRY_TOKEN];
    [Flurry setLogLevel:FlurryLogLevelAll];
    
    // Initialize Google Analytics
    [GAI sharedInstance].dispatchInterval = 5;
    [[[GAI sharedInstance] logger] setLogLevel:kGAILogLevelVerbose];
    [[GAI sharedInstance] trackerWithTrackingId:GOOGLE_TOKEN];
    
    return YES;
}

- (void)application:(UIApplication *)application performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    [[TaplyticsManager sharedManager] performBackgroundFetch:completionHandler];
}

@end
