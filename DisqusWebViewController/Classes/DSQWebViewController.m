//
//  DSQWebViewController.m
//  DisqusWebViewController
//
//  Created by Andrei Radulescu on 8/18/16.
//  Copyright © 2016 Andrei Radulescu. All rights reserved.
//

#import "DSQWebViewController.h"

@interface DSQWebViewController () <UIWebViewDelegate>

@property (nonatomic, strong) UIWebView *webView;

@property (nonatomic, strong) NSURL *disqusURL;

@end

@implementation DSQWebViewController

- (instancetype)initWithDisqusURL:(NSURL *)disqusURL
{
    if (self = [super init]) {
        self.disqusURL = disqusURL;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    self.webView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.webView.delegate = self;
    [self.view addSubview:self.webView];
    
    [self loadDisqusComments];
}

- (void)loadDisqusComments
{
    NSURLRequest *request = [NSURLRequest requestWithURL:self.disqusURL];
    [self.webView loadRequest:request];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    // The following code opens all new windows in the current window
    // Useful for "Forgot Password", "Basic Rules", "Terms of Service", and "Privacy Policy"
    // which open in a new window by default
    if (navigationType == UIWebViewNavigationTypeLinkClicked) {
        [self.webView loadRequest:request];
        return NO;
    }
    
    NSString *urlString = [request.URL absoluteString];
    
    if ([urlString hasSuffix:@"#!auth%3Asuccess"] || [urlString hasSuffix:@"#!auth%3Acancel"]) {
        [self loadDisqusComments];
    }
    
    return YES;
}

@end
