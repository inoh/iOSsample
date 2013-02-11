//
//  TEAppDelegate.h
//  TabExample
//
//  Created by 井上　裕之 on 2013/02/11.
//  Copyright (c) 2013年 Hiroyuki Inoue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TEAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) UINavigationController *navController;

@end
