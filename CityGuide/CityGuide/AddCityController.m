//
//  AddCityController.m
//  CityGuide
//
//  Created by 井上　裕之 on 2013/02/09.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import "AddCityController.h"

@interface AddCityController ()

@end

@implementation AddCityController

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
    self.title = @"New City";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    if (indexPath.row == 0) {
        cell = nameCell;
    } else {
        cell = descriptionCell;
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

#pragma mark UITableViewDelegate Methods

/*
 * 指定された位置にある個々のテーブルビューの高さ
 */
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height;
    if (indexPath.row == 0) {
        height = 44;
    } else {
        height = 362;
    }
    return height;
}

@end
