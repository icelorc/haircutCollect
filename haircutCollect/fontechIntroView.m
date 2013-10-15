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

        [self.layer setBorderColor:[UIColor lightGrayColor].CGColor ];
        [self.layer setBorderWidth:1.5f];
        [self.layer setCornerRadius:15.0f];
        self.textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 230, 280, 180)];
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 30, 300, 200)];
        self.backgroundColor = [UIColor whiteColor];
        self.textView.editable = NO;
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
