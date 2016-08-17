Pod::Spec.new do |s|
  s.name             = 'DisqusWebViewController'
  s.version          = '0.1'
  s.summary          = 'DisqusWebViewController is a drop-in class for loading Disqus Comments in a Controller.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
DisqusWebViewController is a drop-in class for loading Disqus Comments in a Controller. Just initialize it with a Disqus URL and use it as a UIViewController.
                       DESC

  s.homepage         = 'https://github.com/andiradulescu/disqus-ios-webview'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andrei Radulescu' => 'andi.radulescu@gmail.com' }
  s.source           = { :git => 'https://github.com/andiradulescu/disqus-ios-webview.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'

  s.source_files = 'DisqusWebViewController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DisqusWebViewController' => ['DisqusWebViewController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
