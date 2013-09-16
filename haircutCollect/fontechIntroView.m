//
//  fontechIntroView.m
//  haircutCollect
//
//  Created by Robert Huang on 9/16/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechIntroView.h"

@implementation fontechIntroView

@synthesize imageView;
@synthesize textView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        self.textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 250, 320, 250)];
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 50, 320, 200)];
        [self addSubview:self.textView];
        [self addSubview:self.imageView];
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
