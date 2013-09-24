//
//  fontechFacebookViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/24/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechFacebookViewController.h"

@interface fontechFacebookViewController ()

@end

@implementation fontechFacebookViewController

@synthesize webView = _webView;

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
    NSString *urlAddress = @"http://m.facebook.com/pages/FLUX_collection-HAIR-BOUTIQUE/151421662525?ref=br_tf&_rdr";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:requestObj];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
