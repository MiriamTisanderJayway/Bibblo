//
//  RightViewController.m
//  Bibblo
//
//  Created by Jayway on 2015-02-18.
//  Copyright (c) 2015 Jayway. All rights reserved.
//

#import "RightViewController.h"
#import "RightBookScrollView.h"


#import <RestKit/RestKit.h>

#import <SDWebImage/UIImageView+WebCache.h>

#import "TopEBooks.h"
#import "Item.h"
#import "BookCell.h"
#import "Authors.h"
#import "BookType.h"



@interface RightViewController ()


@property (nonatomic, strong) NSArray *TopEBooks;

@end

@implementation RightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self configureRestKit];

    
    [self setLayout];
    
    
    


    
    // Do any additional setup after loading the view.
}


- (void)setLayout
{
    self.view.backgroundColor = [UIColor whiteColor];
  //  self.view =
 
    
}


- (void)configureRestKit
{
    
    
    // initialize AFNetworking HTTPClient
    NSURL *baseURL = [NSURL URLWithString:@"http://exjlibrary.azurewebsites.net"];
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
    
    // initialize RestKit
    RKObjectManager *objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
    
    
    
    
    // setup object mappings
    RKObjectMapping *topEBooksMapping = [RKObjectMapping
                                         mappingForClass:[TopEBooks class]];
    [topEBooksMapping addAttributeMappingsFromArray:@[@"Rank"]];
    
    
    
    // define Item object mapping
    RKObjectMapping *itemMapping = [RKObjectMapping mappingForClass:[Item class]];
    [itemMapping addAttributeMappingsFromDictionary:@{@"CoverImage": @"cover", @"Type": @"type", @"Title": @"title" }];
    
    
    
    // define BookType object mapping
    RKObjectMapping *bookTypeMapping = [RKObjectMapping
                                        mappingForClass:[BookType class]];
    [bookTypeMapping addAttributeMappingsFromDictionary:@{@"UrlFriendlyName": @"urlBookType" }];
    
    
    
    // define relationship mapping
    [topEBooksMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"Item" toKeyPath:@"Item" withMapping:itemMapping]];
    
    
    /*
     // define relationship mapping
     [itemMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"Authors" toKeyPath:@"Authors" withMapping:authorsMapping]];
     */
    
    
    
    [itemMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"BookType" toKeyPath:@"BookType" withMapping:bookTypeMapping]];
    
    
    
    
    // register mappings with the provider using a response descriptor
    RKResponseDescriptor *responseDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:topEBooksMapping
                                                 method:RKRequestMethodGET
                                            pathPattern:@"/"
                                                keyPath:@"TopEBooks"
                                            statusCodes:[NSIndexSet indexSetWithIndex:200]];
    
    
    [objectManager addResponseDescriptor:responseDescriptor];
    
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
