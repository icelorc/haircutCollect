//
//  fontechServiceDetailPriceViewController.h
//  haircutCollect
//
//  Created by Robert Huang on 9/30/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fontechServiceDetailPriceViewController : UITableViewController

@property (nonatomic, retain) NSArray *nameArray;
@property (nonatomic, retain) NSArray *itemArray;
@property (nonatomic, retain) NSArray *priceArray;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *priceLabel;

@end
