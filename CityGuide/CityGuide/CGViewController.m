//
//  CGViewController.m
//  CityGuide
//
//  Created by 井上　裕之 on 2013/01/31.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import "CGViewController.h"
#import "CGAppDelegate.h"
#import "City.h"
#import "CityController.h"

@interface CGViewController ()

@end

@implementation CGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"City Guide";
    CGAppDelegate *delegate = (CGAppDelegate *)[[UIApplication sharedApplication] delegate];
    cities = delegate.cities;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tv dequeueReusableCellWithIdentifier:@"cell"];
    if (nil == cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    City *thisCity = [cities objectAtIndex:indexPath.row];
    cell.textLabel.text = thisCity.cityName;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [cities count];
}

#pragma mark UITableViewDelegate Methods

- (void)tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGAppDelegate *delegate = (CGAppDelegate *)[[UIApplication sharedApplication] delegate];
    CityController *city = [[CityController alloc] init];
    [delegate.navController pushViewController:city animated:YES];
    
    [tv deselectRowAtIndexPath:indexPath animated:YES];
}

@end
