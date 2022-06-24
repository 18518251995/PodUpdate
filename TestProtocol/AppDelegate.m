//
//  AppDelegate.m
//  TestProtocol
//
//  Created by 张振栋 on 2022/1/18.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window.backgroundColor = [UIColor whiteColor];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] init] ];
    
    self.window.rootViewController = nav;
    return YES;
}


@end
