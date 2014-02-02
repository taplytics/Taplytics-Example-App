//
//  AppDelegate.m
//  Taplytics Example App
//
//  Copyright (c) 2013 Taplytics. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [TaplyticsManager startTaplyticsAPIKey:@"YOUR TAPLYTICS API KEY"];
    
    return YES;
}

- (void)application:(UIApplication *)application performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    [TaplyticsManager performBackgroundFetch:completionHandler];
}

@end
