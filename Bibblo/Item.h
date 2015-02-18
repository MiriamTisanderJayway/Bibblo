//
//  Item.h
//  Bibblo
//
//  Created by Jayway on 2015-02-17.
//  Copyright (c) 2015 Jayway. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Authors.h"
#import "BookType.h"

@interface Item : NSObject
    @property (nonatomic, strong) NSString *title;
    @property (nonatomic, strong) NSString *cover;
    @property (nonatomic, strong) NSString *type;
    @property (nonatomic, strong) BookType *BookType;
    @property (nonatomic, strong) Authors *Authors;
@end
