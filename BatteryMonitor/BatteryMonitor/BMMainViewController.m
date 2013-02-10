//
//  BMMainViewController.m
//  BatteryMonitor
//
//  Created by 井上　裕之 on 2013/02/11.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import "BMMainViewController.h"

@interface BMMainViewController ()

@end

@implementation BMMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(BMFlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)showInfo:(id)sender
{    
    BMFlipsideViewController *controller = [[BMFlipsideViewController alloc] initWithNibName:@"BMFlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:nil];
}

@end
