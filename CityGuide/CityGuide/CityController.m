//
//  CityController.m
//  CityGuide
//
//  Created by 井上　裕之 on 2013/02/02.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import "CityController.h"
#import "CGAppDelegate.h"
#import "City.h"

@interface CityController ()

@end

@implementation CityController

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
    
    CGAppDelegate *delegate = (CGAppDelegate *) [[UIApplication sharedApplication] delegate];
    City *thisCity = [delegate.cities objectAtIndex:index.row];
    
    self.title = thisCity.cityName;
    descriptionView.text = thisCity.cityDescription;
    descriptionView.editable = NO;
    pictureView.image = thisCity.cityPicture;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithIndexPath:(NSIndexPath *)indexPath {
    if ( (self = [super init])) {
        index = indexPath;
    }
    return self;
}

@end
