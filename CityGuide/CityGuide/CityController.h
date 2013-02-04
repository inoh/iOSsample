//
//  CityController.h
//  CityGuide
//
//  Created by 井上　裕之 on 2013/02/02.
//  Copyright (c) 2013年 井上　裕之. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityController : UIViewController {
    NSIndexPath *index;
    
    IBOutlet UIImageView *pictureView;
    IBOutlet UITextView *descriptionView;
}

- (id)initWithIndexPath:(NSIndexPath *)indexPath;

@end
