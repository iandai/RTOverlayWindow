RTOverlayWindow 
============

RTOverlayWindow creates an overlay window which fills the entire screen with another UIWindow. Handles view's orientation automatically.
RTOverlayWindow tries to learn from the implementation of UIAlertView. 

RTOverlayWindow works on iOS 8 ~ iOS 9.


Usage
-------

Support the current orientation the status bar might have

    
    #import "RTOverlayWindow.h"
    
    // get overlay window top view
    RTOverlayWindow *window = [[RTOverlayWindow alloc] init];
    UIView *overlayView = [window getOverlayView];
    
    // set overlayView color
    // overlayView.backgroundColor = ...
    // add any subviews
    
