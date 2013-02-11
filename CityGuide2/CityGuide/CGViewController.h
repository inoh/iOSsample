//
//  CGViewController.h
//  CityGuide
//
//  Created by 井上　裕之 on 2013/01/31.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *cities;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (void)addCity:(id)sender;

@end
