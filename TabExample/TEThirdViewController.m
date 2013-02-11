//
//  TEThirdViewController.m
//  TabExample
//
//  Created by 井上　裕之 on 2013/02/11.
//  Copyright (c) 2013年 Hiroyuki Inoue. All rights reserved.
//

#import "TEThirdViewController.h"

@interface TEThirdViewController ()

@end

@implementation TEThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Third", @"Third");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
