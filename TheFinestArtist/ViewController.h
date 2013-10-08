//
//  ViewController.h
//  TheFinestArtist
//
//  Created by TheFinestArtist on 13. 10. 3..
//  Copyright (c) 2013년 TheFinestArtist. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *WebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loading;

@end
