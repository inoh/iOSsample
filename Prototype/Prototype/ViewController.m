//
//  ViewController.m
//  Prototype
//
//  Created by 井上　裕之 on 2013/02/16.
//  Copyright (c) 2013年 Hiroyuki Inoue. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)pushedGo:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://www.apple.com/"];
    WebViewController *webViewController = [[WebViewController alloc] initWithURL:url andTitle:@"Apple"];
    [self presentModalViewController:webViewController animated:YES];
}
@end
