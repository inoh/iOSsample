//
//  ViewController.m
//  HelloWorld
//
//  Created by 井上　裕之 on 2013/01/30.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)pushButton:(id)sender {
    label.text = @"Hello World";
}
@end
