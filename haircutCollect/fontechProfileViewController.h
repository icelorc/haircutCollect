//
//  fontechProfileViewController.h
//  haircutCollect
//
//  Created by Robert Huang on 9/17/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fontechProfileViewController : UITableViewController <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *phoneButton;
@property (weak, nonatomic) IBOutlet UIButton *addressButton;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;

@end
