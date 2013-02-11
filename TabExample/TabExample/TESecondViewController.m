//
//  TESecondViewController.m
//  TabExample
//
//  Created by 井上　裕之 on 2013/02/11.
//  Copyright (c) 2013年 Hiroyuki Inoue. All rights reserved.
//

#import "TESecondViewController.h"

@interface TESecondViewController ()

@end

@implementation TESecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
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

@end
