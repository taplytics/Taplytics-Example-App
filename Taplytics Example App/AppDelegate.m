//
//  AppDelegate.m
//  Taplytics Example App
//
//  Copyright (c) 2013 Taplytics. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [Taplytics startTaplyticsAPIKey:@"YOUR_TAPLYTICS_API_KEY"];
    
    return YES;
}

- (void)application:(UIApplication *)application performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    [Taplytics performBackgroundFetch:completionHandler];
}

@end
