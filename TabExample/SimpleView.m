//
//  SimpleView.m
//  TabExample
//
//  Created by 井上　裕之 on 2013/02/11.
//  Copyright (c) 2013年 Hiroyuki Inoue. All rights reserved.
//

#import "SimpleView.h"

@interface SimpleView ()

@end

@implementation SimpleView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Test";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
