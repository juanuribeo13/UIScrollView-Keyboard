# UIScrollView-Keyboard

[![CI Status](http://img.shields.io/travis/Juan Uribe/UIScrollView-Keyboard.svg?style=flat)](https://travis-ci.org/Juan Uribe/UIScrollView-Keyboard)
[![Version](https://img.shields.io/cocoapods/v/UIScrollView-Keyboard.svg?style=flat)](http://cocoapods.org/pods/UIScrollView-Keyboard)
[![License](https://img.shields.io/cocoapods/l/UIScrollView-Keyboard.svg?style=flat)](http://cocoapods.org/pods/UIScrollView-Keyboard)
[![Platform](https://img.shields.io/cocoapods/p/UIScrollView-Keyboard.svg?style=flat)](http://cocoapods.org/pods/UIScrollView-Keyboard)

## Installation

UIScrollView-Keyboard is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UIScrollView-Keyboard', '~> 0.1.0'
```

## Usage

In the `viewWillAppear:` of your `UIViewController` call the `startObservingKeyboardNotifications` method on the `UIScrollView` you are using and in the `viewWillDisappear:` call `stopObservingKeyboardNotifications`.

If you also want to dismiss the keyboard when the user taps the screen, then call `dismissKeyboardWithTap`.

```objective-c
- (void)viewDidLoad
{

	[self.scrollView dismissKeyboardWithTap];
}

- (void)viewWillAppear:(BOOL)animated {
	
	[self.scrollView startObservingKeyboardNotifications];
}

- (void)viewWillDisappear:(BOOL)animated {
	
	[self.scrollView stopObservingKeyboardNotifications];
}
```

**NOTE:** The category uses notifications to know when the keyboard shows and hides, so remember to call `stopObservingKeyboardNotifications`.

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

Juan Uribe, juanuribeo13@gmail.com

## License

UIScrollView-Keyboard is available under the MIT license. See the LICENSE file for more info.
