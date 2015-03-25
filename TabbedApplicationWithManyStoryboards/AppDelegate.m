//
//  AppDelegate.m
//  TabbedApplicationWithManyStoryboards
//
//  Created by Rodrigo Soldi Lopes on 25/03/15.
//  Copyright (c) 2015 Rodrigo Soldi. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIStoryboard *storyBoard1 = [UIStoryboard storyboardWithName:@"primeira" bundle:nil];
    UIViewController *primeira = [storyBoard1 instantiateInitialViewController];
    primeira.tabBarItem.title = @"Primeira";
    
    UIStoryboard *storyBoard2 = [UIStoryboard storyboardWithName:@"segunda" bundle:nil];
    UIViewController *segunda = [storyBoard2 instantiateInitialViewController];
    segunda.tabBarItem.title = @"Segunda";
    
    UIStoryboard *storyBoard3 = [UIStoryboard storyboardWithName:@"terceira" bundle:nil];
    UIViewController *terceira = [storyBoard3 instantiateInitialViewController];
    terceira.tabBarItem.title = @"Terceira";
    
    UIStoryboard *storyBoard4 = [UIStoryboard storyboardWithName:@"quarta" bundle:nil];
    UIViewController *quarta = [storyBoard4 instantiateInitialViewController];
    quarta.tabBarItem.title = @"Quarta";
    
    NSArray *storyBoards = @[primeira, segunda, terceira, quarta];
    
    UITabBarController *tabbarVC = [[UITabBarController alloc] init];
    [tabbarVC setViewControllers: storyBoards];
    
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.rootViewController = tabbarVC;
    [self.window makeKeyAndVisible];
    
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
