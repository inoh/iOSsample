//
//  AddCityController.h
//  CityGuide
//
//  Created by 井上　裕之 on 2013/02/09.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddCityController : UIViewController
<UITableViewDataSource, UITableViewDelegate> {
    IBOutlet UITableView *tableView;
    IBOutlet UITableViewCell *nameCell;
    IBOutlet UITableViewCell *descriptionCell;
}

- (IBAction)saveCity:(id)sender;

@end
