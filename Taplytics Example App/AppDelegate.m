//
//  AppDelegate.m
//  Taplytics Example App
//
//  Copyright (c) 2013 Taplytics. All rights reserved.
//

#import "AppDelegate.h"

#define TAPLYTICS_TOKEN @"YOUR TOKEN HERE"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [TaplyticsManager startTaplyticsAPIKey:TAPLYTICS_TOKEN liveUpdate:YES];
    
    return YES;
}

- (void)application:(UIApplication *)application performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    [[TaplyticsManager sharedManager] performBackgroundFetch:completionHandler];
}

@end
