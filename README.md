RTOverlayWindow 
============

RTOverlayWindow creates an overlay window which fills the entire screen with another UIWindow. Handles view's orientation automatically.

RTOverlayWindow works on iOS 6 ~ iOS 9.


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
    

FIX ME
-------
* issue with iOS6 in Demo
* issue when iPad is in landscape mode
