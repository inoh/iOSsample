//
//  BMAppDelegate.h
//  BatteryMonitor
//
//  Created by 井上　裕之 on 2013/02/11.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BMMainViewController;

@interface BMAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) BMMainViewController *mainViewController;

@end
