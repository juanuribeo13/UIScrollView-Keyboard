//
//  UIScrollView+Keyboard.h
//  Pods
//
//  Created by Juan Alberto Uribe Otero on 6/23/15.
//
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Keyboard)

- (void)startObservingKeyboardNotifications;
- (void)stopObservingKeyboardNotifications;

- (void)dismissKeyboardWithTap;

@end
