//
//  ViewController.m
//  RTOverlayWindowDemo
//
//  Created by iandai on 10/2/15.
//  Copyright © 2015 iandai. All rights reserved.
//

#import "ViewController.h"
#import "RTOverlayWindow.h"

@interface ViewController ()
@property (nonatomic) UIView *overlayView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0,0,300,300)];
    [btn setTitle:@"Show Overlay Window" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    btn.center = self.view.center;
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnPressed) forControlEvents:UIControlEventTouchUpInside];
    btn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;

}


- (void)btnPressed {
    
    // get overlay window top view
    RTOverlayWindow *window = [[RTOverlayWindow alloc] init];
    UIView *overlayView = [window getOverlayView];

    // set overlayView color
    // overlayView.backgroundColor = ...
    
    // add any subviews
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0,0,300,300)];
    lbl.layer.borderColor = [UIColor whiteColor].CGColor;
    lbl.layer.borderWidth = 2;
    lbl.text = @"Custom Alert View Here";
    lbl.textColor = [UIColor whiteColor];
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.font = [UIFont systemFontOfSize:20];
    lbl.center = overlayView.center;
    [overlayView addSubview:lbl];
    lbl.autoresizingMask =  UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
