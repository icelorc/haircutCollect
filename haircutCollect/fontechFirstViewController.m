//
//  fontechFirstViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/13/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechFirstViewController.h"

@interface fontechFirstViewController ()

@end

@implementation fontechFirstViewController

@synthesize scrollView = _scrollView;
@synthesize pageControl = _pageControl;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *viewArray = [[NSArray alloc] initWithObjects:@"image1.jpg", @"image2.jpg", @"image3.jpg", nil];
    
    for (int i = 0; i < [viewArray count]; i++) {
        //We'll create an imageView object in every 'page' of our scrollView.
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        fontechIntroView *introView = [[fontechIntroView alloc] initWithFrame:CGRectMake(frame.origin.x + 5, frame.origin.y + 5, self.scrollView.frame.size.width - 10, self.scrollView.frame.size.height - 10)];
        introView.imageView.image = [UIImage imageNamed:[viewArray objectAtIndex:i]];
        introView.textView.text = @"Test\n This is a text";
        [self.scrollView addSubview:introView];
    }
    //Set the content size of our scrollview according to the total width of our imageView objects.
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * [viewArray count], self.scrollView.frame.size.height);
	// Do any additional setup after loading the view, typically from a nib. 
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
