//
//  WebViewController.m
//  Prototype
//
//  Created by 井上　裕之 on 2013/02/16.
//  Copyright (c) 2013年 Hiroyuki Inoue. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

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
    webTitle.title = theTitle;
    NSURLRequest *requestObject = [NSURLRequest requestWithURL:theURL];
    [webView loadRequest:requestObject];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithURL:(NSURL *)url andTitle:(NSString *)string
{
    if (self = [super init]) {
        theURL = url;
        theTitle = string;
    }
    return self;
}

- (id)initWithURL:(NSURL *)url
{
    return [self initWithURL:url andTitle:nil];
}

- (IBAction) done:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    webView.delegate = nil;
    [webView stopLoading];
}

@end
