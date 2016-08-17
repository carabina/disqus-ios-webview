//
//  DSQWebViewController.h
//  DisqusWebViewController
//
//  Created by Andrei Radulescu on 8/18/16.
//  Copyright © 2016 Andrei Radulescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSQWebViewController : UIViewController

- (instancetype)initWithDisqusURL:(NSURL *)disqusURL;

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithCoder:(NSCoder *)aDecoder NS_UNAVAILABLE;
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil NS_UNAVAILABLE;

@end
