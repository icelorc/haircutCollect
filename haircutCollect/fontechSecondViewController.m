//
//  fontechSecondViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/13/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechSecondViewController.h"

@interface fontechSecondViewController ()

@end

@implementation fontechSecondViewController

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
        
        fontechDesignerView *designerView= [[fontechDesignerView alloc] initWithFrame:frame];
        designerView.imageView.image = [UIImage imageNamed:[viewArray objectAtIndex:i]];
        designerView.textView.text = @"In portfolio web pages, especially in the field of design, one of the first things that you will notice is an introductory text consisting of a few words about the company or the designer behind the site.\nThis can be extremely useful for readers, as it provides quick and direct information about the designer, or the company behind the site.\nThese introductions are generally highlighted by the use of large text, positioned at the top of the site, and always catch the visitor’s eye. \nThey give a more personal feeling to the site and tend to replace the traditional taglines under a logo for example.\nIn this article, we list 50 examples of excellent web page introductions used in portfolio websites that you can use as inspiration for your own designs.\nSome pretty cool stuff. If you enjoy writing controls as I do, designers are a godsend.\n I'm not exaggerating when I say that more than half the time spent developing a control for .\n net can be spent developing the design-time experience. In most cases you can get away without writing one at all, but having a designer for your control or component helps give it that professional polish that people expect from good controls.\nAn example of good designer usage is the .net Tab Control. This familiar control uses a set of tabs to switch between several client areas, thus saving space on forms where a lot of information is needed. The TabControl itself has a designer, which allows the user to switch the visible tab at design time. Normally click messages wouldn't get through to the underlying control at design time, but with the aid of a designer this is possible.\nThe TabControl class adds TabPage instances to itself to host child controls. A TabPage doesn't do a lot more than inherit from ContainerControl so you can host controls on it. Or does it? In actual fact, the TabPage Designer class does more. For instance, it stops the user from being able to move the TabPage. It should stay stationary and be moved and sized by its parent TabControl, and the designer enforces that. Also, the designer listens for when the user selects the TabPage and deletes it, and notifies the parent TabControl so it can update its collection and interface.\nAnother example of designer usage is the TextBox control. Have you ever wondered how it stops the user from resizing it when its multiline property is set to False? Well, you probably haven't, but it's with a designer, and it's remarkably easy to achieve.\nAll the selecting, moving and resizing of controls you do at design time is handled by the designers that are part of the framework. Together with a bucket load of interfaces implemented by the host environment, you can create an extremely flexible and intuitive design time experience for a developer using one of your controls.\n";
        
        designerView.nameLabel.text = @"Robert";
        designerView.titleLabel.text = @"Designer";
        [self.scrollView addSubview:designerView];
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
