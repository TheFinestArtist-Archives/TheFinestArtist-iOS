//
//  ViewController.m
//  TheFinestArtist
//
//  Created by TheFinestArtist on 13. 10. 3..
//  Copyright (c) 2013년 TheFinestArtist. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *version = [[UIDevice currentDevice] systemVersion];
    BOOL isAtLeast7 = [version floatValue] >= 7.0;
    if (!isAtLeast7) {
        _WebView.frame = CGRectMake(_WebView.frame.origin.x,
                                    _WebView.frame.origin.y - 20,
                                    _WebView.frame.size.width,
                                    _WebView.frame.size.height + 20);
        _loading.frame = CGRectMake(_loading.frame.origin.x,
                                    _loading.frame.origin.y - 20,
                                    _loading.frame.size.width,
                                    _loading.frame.size.height);
    }
    
    if ([[UIScreen mainScreen] bounds].size.height == 480)
        _loading.frame = CGRectMake(_loading.frame.origin.x,
                                    _loading.frame.origin.y - 44,
                                    _loading.frame.size.width,
                                    _loading.frame.size.height);
    
    NSString *fullURL = @"http://thefinestartist.com";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    _WebView.delegate = self;
    [_WebView loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [_loading startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [_loading stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
}

@end
