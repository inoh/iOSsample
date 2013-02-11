//
//  BMFlipsideViewController.h
//  BatteryMonitor
//
//  Created by 井上　裕之 on 2013/02/11.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BMFlipsideViewController;

@protocol BMFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(BMFlipsideViewController *)controller;
@end

@interface BMFlipsideViewController : UIViewController

@property (weak, nonatomic) id <BMFlipsideViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UISwitch *toggleSwitch;

- (IBAction)done:(id)sender;

@end
