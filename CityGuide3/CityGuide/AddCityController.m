//
//  AddCityController.m
//  CityGuide
//
//  Created by 井上　裕之 on 2013/02/09.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import "AddCityController.h"
#import "CGAppDelegate.h"
#import "CGViewController.h"
#import "City.h"

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

- (void)saveCity:(id)sender
{
    CGAppDelegate *delegate = (CGAppDelegate *)[[UIApplication sharedApplication] delegate];
    NSMutableArray *cities = delegate.cities;
    
    UITextField *nameEntry = (UITextField *)[nameCell viewWithTag:777];
    UITextView *descriptionEntry = (UITextView *)[descriptionCell viewWithTag:777];
    
    if (nameEntry.text.length > 0) {
        City *newCity = [[City alloc] init];
        newCity.cityName = nameEntry.text;
        newCity.cityDescription = descriptionEntry.text;
        newCity.cityPicture = nil;
        newCity.cityPicture = cityPicture;
        [cities addObject:newCity];
        
        CGViewController *viewController = delegate.viewController;
        [viewController.tableView reloadData];
    }
    [delegate.navController popViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"New City";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveCity:)];
    cityPicture = [UIImage imageNamed:@"Tokyo.jpg"];
    
    pickerController = [[UIImagePickerController alloc] init];
    pickerController.allowsEditing = NO;
    pickerController.delegate = self;
    pickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addPicture:(id)sender
{
    UITextField *nameEntry = (UITextField *)[nameCell viewWithTag:777];
    [nameEntry resignFirstResponder];
    
    [self presentModalViewController:pictureCell animated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [self dismissModalViewControllerAnimated:YES];
    cityPicture = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    UIImageView *pictureView = (UIImageView *)[pictureCell viewWithTag:777];
    pictureView.image = cityPicture;
    [tableView reloadData];
}

#pragma mark UITableViewDataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    if (indexPath.row == 0) {
        cell = nameCell;
    } else if (indexPath.row == 1) {
        UIImageView *pictureView = (UIImageView *)[pictureCell viewWithTag:777];
        pictureView.image = cityPicture;
        cell = pictureCell;
    } else {
        cell = descriptionCell;
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tv numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

#pragma mark UITableViewDelegate Methods

/*
 * 指定された位置にある個々のテーブルビューの高さ
 */
- (CGFloat)tableView:(UITableView *)tv heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height;
    if (indexPath.row == 0) {
        height = 44;
    } else if (indexPath.row == 1) {
        height = 83;
    } else {
        height = 279;
    }
    return height;
}

@end
