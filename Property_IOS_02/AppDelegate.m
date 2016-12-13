//
//  AppDelegate.m
//  Property_IOS_02
//
//  Created by Slava on 13.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Human *boxer = [[Human alloc]init];
    //set
    [boxer setName:@"Aleksander"];
    [boxer setAge:22];
    [boxer setWeight:64.3];
    [boxer setHeight:153.2];
    //get
    NSLog(@"Имя-%@",[boxer name]);
    NSLog(@"Возраст - %d",[boxer age]);
    NSLog(@"Вес - %.2f",[boxer weight]);
    NSLog(@"Рост - %.2f",[boxer height]);
    
    boxer.name = @"Alex";
    boxer.age = 22;
    boxer.weight = 78.4f;
    boxer.height = 185.3f;
    
    NSLog(@"Имя-%@",boxer.name);
    NSLog(@"Возраст-%D",boxer.age);
    NSLog(@"Вес-%.2f",boxer.weight);
    NSLog(@"Рост-%.2f",boxer.height);
    
    NSLog(@"%d", [boxer howOldAreYou]);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
