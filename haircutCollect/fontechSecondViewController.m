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
        
        fontechDesignerView *designerView= [[fontechDesignerView alloc] initWithFrame:CGRectMake(frame.origin.x + 10, frame.origin.y + 10, self.scrollView.frame.size.width - 20, self.scrollView.frame.size.height - 10)];
        designerView.imageView.image = [UIImage imageNamed:[viewArray objectAtIndex:i]];
        designerView.textView.text = @"身為資深藝人形象顧問的 Ivan 能夠依據顧客的相貌、個性和偏好來精準的判斷最適合顧客的髮型。但 Ivan 不單單研究人的心理，他還是個美的偏執狂。他的設計構圖精準，著重細節但絕不拖泥帶水。對於造型抱持著高度執著的 Ivan，最開心看到顧客走出髮廊時充滿自信的表情。\n \n ▉ 走秀\n Gucci / Chanel / Louis Vuitton / Prada / Yves Saint Laurent / Marie Claire。\n \n ▉ 雜誌 \n GQ / Vogue / Elle \n \n ▉ 廣告 & 活動 \n Kanebo / Nivea / 7-11 / FILA / Sara Sara / 泰山泉水 / 曼黛瑪蓮 / 公益廣告 / 大中華 Cartier / P&G 形象廣告 / 101 形象廣告 / 遠傳電信 / 台灣大哥大 / 金馬獎 \n \n ▉ 藝人 \n 陳奕迅 / 戴佩妮 / 黃小琥 / 彭于晏 / A LIN / 王若琳 / 吳克羣 / 林育群 / 小胖 / 盧廣仲 / 信 / 胡夏 / 李聖傑 / 陳柏霖 / 楊宗緯 / 蕭煌奇 / 柯震東 / 阮經天 / 柯有倫 / 動力火車 / 張智成 / 蕭閎仁 / 蔡旻祐 / 棒棒糖 / ENERGY / 袁詠琳 / 浪花兄弟 / 方炯鑌 / 光良 / 曾沛慈";
        
        designerView.nameLabel.text = @"Ivan Huang";
        designerView.titleLabel.text = @"設計師";
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
