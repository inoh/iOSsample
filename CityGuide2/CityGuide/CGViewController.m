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
#import "AddCityController.h"

@interface CGViewController ()

@end

@implementation CGViewController

/*
 * 画面ロード時のコールバック
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"City Guide"; // ビューのヘッダーに表示する文字
    CGAppDelegate *delegate = (CGAppDelegate *)[[UIApplication sharedApplication] delegate];
    cities = delegate.cities;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource Methods

/*
 * セルに表示する内容を決定する
 */
- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tv dequeueReusableCellWithIdentifier:@"cell"]; // 再利用可能なTableViewのセルオブジェクト
    if (nil == cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    NSLog(@"indexPath.row = %d, cities.count = %d", indexPath.row, cities.count);
    if (indexPath.row < cities.count) {
        City *thisCity = [cities objectAtIndex:indexPath.row];
        cell.textLabel.text = thisCity.cityName;
        cell.textLabel.textColor = [UIColor blackColor];
    }
    return cell;
}

/*
 * 各セクションがいくつのセルを持つのかを決定
 */
- (NSInteger)tableView:(UITableView *)tv numberOfRowsInSection:(NSInteger)section {
    NSInteger count = cities.count;
    return count;
}

#pragma mark UITableViewDelegate Methods

/*
 * 選択されたセルの値を取得する
 */
- (void)tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGAppDelegate *delegate = (CGAppDelegate *)[[UIApplication sharedApplication] delegate];
    // 編集時の処理
    if (indexPath.row < cities.count) {
        CityController *city = [[CityController alloc] initWithIndexPath:indexPath];
        [delegate.navController pushViewController:city animated:YES];
    }
    [tv deselectRowAtIndexPath:indexPath animated:YES];
}

@end
