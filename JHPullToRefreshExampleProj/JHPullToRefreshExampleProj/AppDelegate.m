//
//  AppDelegate.m
//  JHPullToRefreshExampleProj
//
//  Created by Jeff Hurray on 12/14/14.
//  Copyright (c) 2014 jhurray. All rights reserved.
//

#import "ColorChangeRefreshControl.h"
#import "ColorPTRTableViewController.h"

#import "BubbleRefreshControl.h"
#import "BubblesPTRTableViewController.h"

#import "ViewController.h"

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ColorChangeRefreshControl *refreshControl = [[ColorChangeRefreshControl alloc]
                                                     initWithType:JHRefreshControlTypeSlideDown
                                                      andColors:@[[UIColor blueColor],
                                                                  [UIColor purpleColor],
                                                                  [UIColor redColor],
                                                                  [UIColor orangeColor],
                                                                  [UIColor yellowColor],
                                                                  [UIColor greenColor],
                                                                  [UIColor cyanColor]]];
    ColorPTRTableViewController *colorVC = [[ColorPTRTableViewController alloc] initWithRefreshControl:refreshControl];
    colorVC.title = @"Colors - SlideDown";
    
    BubbleRefreshControl *bubbleControl = [[BubbleRefreshControl alloc] initWithType:JHRefreshControlTypeBackground];
    BubblesPTRTableViewController *bubbleVC = [[BubblesPTRTableViewController alloc] initWithRefreshControl:bubbleControl];
    bubbleVC.title = @"Bubble - Background";
    
    ViewController *vc = [[ViewController alloc] initWithViewControllers:@[colorVC, bubbleVC]];
    
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    window.rootViewController = nav;
    [window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
