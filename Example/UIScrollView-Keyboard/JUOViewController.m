//
//  JUOViewController.m
//  UIScrollView-Keyboard
//
//  Created by Juan Uribe on 06/23/2015.
//  Copyright (c) 2014 Juan Uribe. All rights reserved.
//

#import "JUOViewController.h"
#import <UIScrollView_Keyboard/UIScrollView+Keyboard.h>

@interface JUOViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation JUOViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	[self.scrollView dismissKeyboardWithTap];
}

- (void)viewWillAppear:(BOOL)animated {
	
	[self.scrollView startObservingKeyboardNotifications];
}

- (void)viewWillDisappear:(BOOL)animated {
	
	[self.scrollView stopObservingKeyboardNotifications];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
