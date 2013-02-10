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
    self.navigationItem.rightBarButtonItem = self.editButtonItem; // Editボタンの表示
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 * サブビューが編集モードに送られたことを知らせる
 */
- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
    if (editing != self.editing) {
        [super setEditing:editing animated:animated];
        [self.tableView setEditing:editing animated:animated];

        NSMutableArray *indices = [[NSMutableArray alloc] init];
        for (int i=0; i < cities.count; i++) {
            [indices addObject:[NSIndexPath indexPathForRow:i inSection:0]];
        }
        NSArray *lastIndex = [NSArray arrayWithObject:[NSIndexPath indexPathForRow:cities.count inSection:0]];
        if (editing == YES) {
            for (int i=0; i < cities.count; i++) {
                UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:[indices objectAtIndex:i]];
                [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
            }
            [self.tableView insertRowsAtIndexPaths:lastIndex withRowAnimation:UITableViewRowAnimationLeft];
        } else {
            for (int i=0; i < cities.count; i++) {
                UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:[indices objectAtIndex:i]];
                [cell setSelectionStyle:UITableViewCellSelectionStyleBlue];
            }
            [self.tableView deleteRowsAtIndexPaths:lastIndex withRowAnimation:UITableViewRowAnimationLeft];
        }
    }
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
        cell.editingAccessoryType = UITableViewCellAccessoryNone;
        if (self.editing) {
            [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        }
    } else {
        cell.textLabel.text = @"Add New City...";
        cell.textLabel.textColor = [UIColor lightGrayColor];
        cell.editingAccessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return cell;
}

/*
 * 各セクションがいくつのセルを持つのかを決定
 */
- (NSInteger)tableView:(UITableView *)tv numberOfRowsInSection:(NSInteger)section {
    NSInteger count = cities.count;
    if (self.editing) {
        count = count + 1;
    }
    return count;
}

/*
 * 編集モード時で、Delete、Insertされた時に呼び出される
 */
- (void)tableView:(UITableView *)tv commitEditingStyle:(UITableViewCellEditingStyle)editing forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editing == UITableViewCellEditingStyleDelete) {
        [cities removeObjectAtIndex:indexPath.row];
        [tv deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    }
}

#pragma mark UITableViewDelegate Methods

/*
 * 選択されたセルの値を取得する
 */
- (void)tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGAppDelegate *delegate = (CGAppDelegate *)[[UIApplication sharedApplication] delegate];
    // 編集時の処理
    if (indexPath.row < cities.count && !self.editing) {
        CityController *city = [[CityController alloc] initWithIndexPath:indexPath];
        [delegate.navController pushViewController:city animated:YES];
    }

    // 新規時の処理
    if (indexPath.row == cities.count && self.editing) {
        AddCityController *addCity = [[AddCityController alloc] init];
        [delegate.navController pushViewController:addCity animated:YES];
    }
    [tv deselectRowAtIndexPath:indexPath animated:YES];
}

/*
 * 当該セルが編集状態になったときに表示されるアイコン
 */
- (UITableViewCellEditingStyle)tableView:(UITableView *)tv editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row < cities.count) {
        return UITableViewCellEditingStyleDelete;
    } else {
        return UITableViewCellEditingStyleInsert;
    }
}

@end
