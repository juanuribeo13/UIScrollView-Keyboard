#
# Be sure to run `pod lib lint UIScrollView-Keyboard.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "UIScrollView-Keyboard"
  s.version          = "0.1.0"
  s.summary          = "A UIScrollView category to prevent the keyboard from hidding your view content."
  s.description      = <<-DESC
                       UIScrollView-Keyboard is an UIScrollView category that helps you in an easy way to handle
                       when the keyboard appears and dissapears so it doesn't hide the contents on your view.
                       DESC
  s.homepage         = "https://github.com/juanuribeo13/UIScrollView-Keyboard"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Juan Uribe" => "juanuribeo13@gmail.com" }
  s.source           = { :git => "https://github.com/juanuribeo13/UIScrollView-Keyboard.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'UIScrollView-Keyboard' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
