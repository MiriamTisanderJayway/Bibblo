//
//  TopEBooks.h
//  Bibblo
//
//  Created by Jayway on 2015-02-17.
//  Copyright (c) 2015 Jayway. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

@interface TopEBooks : NSObject
    @property (nonatomic, strong) NSString *Rank;
    @property (nonatomic, strong) Item *Item;
@end