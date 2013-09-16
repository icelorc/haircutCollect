//
//  fontechDesignerView.m
//  haircutCollect
//
//  Created by Robert Huang on 9/16/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechDesignerView.h"

@implementation fontechDesignerView

@synthesize imageView = _imageView;
@synthesize titleLabel = _titleLabel;
@synthesize nameLabel = _nameLabel;
@synthesize textView = _textView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 100, 100)];
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 30, 100, 30)];
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 80, 100, 30)];
        self.textView = [[UITextView alloc] initWithFrame:CGRectMake(20, 160, 280, 350)];
        self.textView.scrollEnabled = YES;
        self.textView.editable = NO;
        
        [self addSubview:self.imageView];
        [self addSubview:self.titleLabel];
        [self addSubview:self.nameLabel];
        [self addSubview:self.textView];
        
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
