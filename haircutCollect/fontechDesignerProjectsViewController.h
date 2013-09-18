//
//  fontechDesignerProjectsViewController.h
//  haircutCollect
//
//  Created by Robert Huang on 9/17/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "fontechIntroView.h"

@interface fontechDesignerProjectsViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end
