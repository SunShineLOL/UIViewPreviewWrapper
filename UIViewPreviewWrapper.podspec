#
# Be sure to run `pod lib lint UIViewPreviewWrapper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIViewPreviewWrapper'
  s.version          = '0.1.0'
  s.summary          = 'UIKit=>SwiftUI的桥接包装'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  "让UIKit实现SwiftUI一样的实时预览"
                       DESC

  s.homepage         = 'https://github.com/443623074@qq.comg/UIViewPreviewWrapper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '443623074@qq.comg' => '443623074@qq.com' }
  s.source           = { :git => 'https://github.com/443623074@qq.comg/UIViewPreviewWrapper.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'UIViewPreviewWrapper/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UIViewPreviewWrapper' => ['UIViewPreviewWrapper/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'SwiftUI'
  # s.dependency 'AFNetworking', '~> 2.3'
end
