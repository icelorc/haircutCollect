//
//  fontechServiceDetailViewController.h
//  haircutCollect
//
//  Created by Robert Huang on 9/26/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "fontechServiceDetailPriceViewController.h"

@interface fontechServiceDetailViewController : UITableViewController

@property (nonatomic, retain) NSArray *titleArray;
@property (nonatomic, retain) NSArray *subTitleArray;

- (id)initWithTitleArray:(NSArray *)titleArray subTitleArray:(NSArray *)subTitleArray;

@end
