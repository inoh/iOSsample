//
//  City.h
//  CityGuide
//
//  Created by 井上　裕之 on 2013/01/31.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, strong) NSString *cityName;
@property (nonatomic, strong) NSString *cityDescription;
@property (nonatomic, strong) UIImage *cityPicture;

@end
