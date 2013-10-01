//
//  fontechDesignerProjectsViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/17/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechDesignerProjectsViewController.h"

@interface fontechDesignerProjectsViewController ()

@end

@implementation fontechDesignerProjectsViewController

@synthesize scrollView = _scrollView;
@synthesize pageControl = _pageControl;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *viewArray = [[NSArray alloc] initWithObjects:@"project1.jpg", @"project2.jpg", @"project3.jpg", @"project4.jpg", @"project5.jpg", @"project6.jpg",nil];
    for (int i = 0; i < [viewArray count]; i++) {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        fontechIntroView *introView = [[fontechIntroView alloc] initWithFrame:CGRectMake(frame.origin.x + 10, frame.origin.y + 10, self.scrollView.frame.size.width - 20, self.scrollView.frame.size.height - 10)];
        introView.imageView.image = [UIImage imageNamed:[viewArray objectAtIndex:i]];
        introView.textView.text = @"設計師 Ting Shih作品_美麗佳人雜誌";
        introView.textView.editable = NO;
        [self.scrollView addSubview:introView];
    }
    //Set the content size of our scrollview according to the total width of our imageView objects.
    NSLog(@"%f", self.scrollView.frame.size.height);
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * [viewArray count], self.scrollView.frame.size.height);
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}

@end
