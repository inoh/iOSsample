//
//  BMFlipsideViewController.m
//  BatteryMonitor
//
//  Created by 井上　裕之 on 2013/02/11.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import "BMFlipsideViewController.h"
#import "BMAppDelegate.h"

@interface BMFlipsideViewController ()

@end

@implementation BMFlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Preferences";
    BMAppDelegate *appDelegate = (BMAppDelegate *) [[UIApplication sharedApplication] delegate];
    self.toggleSwitch.on = appDelegate.monitorBattery;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    BMAppDelegate *appDelegate = (BMAppDelegate *) [[UIApplication sharedApplication] delegate];
    appDelegate.monitorBattery = self.toggleSwitch.on;
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
