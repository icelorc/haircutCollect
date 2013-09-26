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
@synthesize lineImageView = _lineImageView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self.layer setBorderColor:[UIColor lightGrayColor].CGColor ];
        [self.layer setBorderWidth:1.5f];
        [self.layer setCornerRadius:15.0f];
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 120, 120)];
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(180, 10, 100, 30)];
        self.titleLabel.textAlignment = NSTextAlignmentRight;
        self.titleLabel.font = [UIFont systemFontOfSize:12.0];
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(180, 65, 100, 30)];
        self.nameLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:15];
        self.nameLabel.textAlignment = NSTextAlignmentRight;
        self.lineImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 150, 260, 1)];
        self.lineImageView.backgroundColor = [UIColor lightGrayColor];
        self.textView = [[UITextView alloc] initWithFrame:CGRectMake(20, 160, 260, 260)];
        self.textView.scrollEnabled = YES;
        self.textView.editable = NO;
        [self addSubview:self.imageView];
        [self addSubview:self.titleLabel];
        [self addSubview:self.nameLabel];
        [self addSubview:self.lineImageView];
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
