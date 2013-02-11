//
//  BMMainViewController.h
//  BatteryMonitor
//
//  Created by 井上　裕之 on 2013/02/11.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import "BMFlipsideViewController.h"

@interface BMMainViewController : UIViewController <BMFlipsideViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *levelLabel;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;

- (IBAction)showInfo:(id)sender;

- (void)batteryChanged:(NSNotification *)note;

- (NSString *)batteryLevel;
- (NSString *)batteryState:(UIDeviceBatteryState)batteryState;

@end
