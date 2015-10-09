//
//  RTOverlayWindow.m
//  RTOverlayWindowDemo
//
//  Created by iandai on 10/9/15.
//  Copyright (c) 2015 iandai. All rights reserved.
//

#import "RTOverlayWindow.h"
#import "AppDelegate.h"           //TODO: Handle when AppDelegate have a different name.

@interface RTOverlayWindow()
@property (nonatomic, strong) UIWindow *oldKeyWindow;
@end

@implementation RTOverlayWindow

- (id)init
{
    self = [super init];
    if(self)
    {
        // save old key window
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
        _oldKeyWindow = [[UIApplication sharedApplication] keyWindow];
        
        // set up overlay window
        self.frame = appDelegate.window.frame;
        self.opaque = NO;
        self.backgroundColor = [UIColor clearColor];
        
        // set self as keyWindow
        appDelegate.window = self;
        [self makeKeyAndVisible];
        
        // add subview on rootViewController to get rotation support
        UIViewController * vc = [[UIViewController alloc] init];
        self.rootViewController = vc;
    }
    return self;
}

- (UIView *)getOverlayView
{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(handleSingleTap:)];
    [self.rootViewController.view addGestureRecognizer:tap];
    
    self.rootViewController.view.backgroundColor = [UIColor colorWithWhite:0.1 alpha:0.85];
    return self.rootViewController.view;
}


- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer {
    
    // clear current window
    UIWindow *currentWindow = [[UIApplication sharedApplication] keyWindow];
    currentWindow = nil;
    
    // show old window
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    appDelegate.window = self.oldKeyWindow;
    [appDelegate.window makeKeyAndVisible];
}


@end
