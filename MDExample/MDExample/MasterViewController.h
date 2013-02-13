//
//  MasterViewController.h
//  MDExample
//
//  Created by 井上　裕之 on 2013/02/13.
//  Copyright (c) 2013年 Hiroyuki Inoue. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
