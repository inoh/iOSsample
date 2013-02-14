//
//  AppDelegate.h
//  NetworkMonitor
//
//  Created by 井上　裕之 on 2013/02/14.
//  Copyright (c) 2013年 Hiroyuki Inoue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;

- (NSString *)stringFromStatus:(NetworkStatus )status;

@end
