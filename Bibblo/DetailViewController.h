//
//  DetailViewController.h
//  Bibblo
//
//  Created by Jayway on 2015-02-17.
//  Copyright (c) 2015 Jayway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

