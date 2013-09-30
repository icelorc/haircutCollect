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
    NSArray *viewArray = [[NSArray alloc] initWithObjects:@"inside1.jpg", @"inside2.jpg", @"inside3.jpg", nil];
    NSArray *textArray = [[NSArray alloc] initWithObjects:@"專業 Professional\n\nFLUX 的設計師群是吸收英式髮藝概念與技術，講求專業的課程訓練也培養出新一代的台灣設計師。在擁有英式剪髮技術的背景下，更能融合潮流走向，創造出屬於華人特有的髮藝時尚。就資歷而言，我們曾與多位一線藝人合作，也曾參與重要頒獎典禮、電影廣告等拍攝工作，站在流行第一線，更能掌握住髮型與時尚的脈動", @"活力 Vitality\n\n「年輕」、「創新」、「有活力」是 FLUX 所要展現的主要概念，在這裡我們提供良好的工作環境，也鼓勵員工拓展視野，吸收各種流行資訊，著重和顧客與員工的互動。髮藝不僅僅是一種專業技術，同時也著重於文化時尚的深耕。只有積極地發展個人特質，透過學習找尋出合適自己的定位，才能達到真正的專業。", @"獨特 Unique\n\nFLUX 將髮型視為藝術，更認為這樣的藝術應該是貼近每一位顧客的。因此，除了不強調、不追求過份奢華的展現，我們更重視的是顧客的獨特性以及真正的想法。透過細膩的觀察與充分的溝通做為貼近顧客的策略，我們以專業的技術與敏銳的時尚嗅覺，將能展現出顧客的個人特質做為創作的主要理念。",nil];
    
    for (int i = 0; i < [viewArray count]; i++) {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        fontechIntroView *introView = [[fontechIntroView alloc] initWithFrame:CGRectMake(frame.origin.x + 10, frame.origin.y + 10, self.scrollView.frame.size.width - 20, self.scrollView.frame.size.height - 10)];
        introView.imageView.image = [UIImage imageNamed:[viewArray objectAtIndex:i]];
        introView.textView.text = [textArray objectAtIndex:i];
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
