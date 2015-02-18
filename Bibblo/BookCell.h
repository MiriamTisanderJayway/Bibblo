//
//  BookCell.h
//  Bibblo
//
//  Created by Jayway on 2015-02-17.
//  Copyright (c) 2015 Jayway. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface BookCell : UITableViewCell


@property (nonatomic, weak) IBOutlet UILabel *typeLabel;
@property (nonatomic, weak) IBOutlet UILabel *rankLabel;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *authorsLabel;
@property (nonatomic, weak) IBOutlet UIImageView *coverImageView;

@end
