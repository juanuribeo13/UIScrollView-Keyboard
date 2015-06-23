//
//  UIScrollView+Keyboard.m
//  Pods
//
//  Created by Juan Alberto Uribe Otero on 6/23/15.
//
//

#import "UIScrollView+Keyboard.h"

@implementation UIScrollView (Keyboard)

#pragma mark - Configuration

- (void)startObservingKeyboardNotifications {
	[[NSNotificationCenter defaultCenter] addObserver:self
														  selector:@selector(keyboardDidShow:)
																name:UIKeyboardDidShowNotification
															 object:nil];
	
	[[NSNotificationCenter defaultCenter] addObserver:self
														  selector:@selector(keyboardWillHide:)
																name:UIKeyboardWillHideNotification
															 object:nil];
}

- (void)stopObservingKeyboardNotifications {
	[[NSNotificationCenter defaultCenter] removeObserver:self
																	name:UIKeyboardDidShowNotification
																 object:nil];
	
	[[NSNotificationCenter defaultCenter] removeObserver:self
																	name:UIKeyboardWillHideNotification
																 object:nil];
}

- (void)dismissKeyboardWithTap {
	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
	tap.cancelsTouchesInView = NO;
	[self addGestureRecognizer:tap];
}

#pragma mark - Utils

- (void)dismissKeyboard {
	[self endEditing:YES];
}

#pragma mark - Notifications

- (void)keyboardDidShow:(NSNotification*)aNotification {
	NSDictionary* info = [aNotification userInfo];
	CGSize kbSize = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
	
	UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, kbSize.height, 0.0);
	self.contentInset = contentInsets;
	self.scrollIndicatorInsets = contentInsets;
}

- (void)keyboardWillHide:(NSNotification*)aNotification {
	UIEdgeInsets contentInsets = UIEdgeInsetsZero;
	self.contentInset = contentInsets;
	self.scrollIndicatorInsets = contentInsets;
}

@end
