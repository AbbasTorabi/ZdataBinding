#
# Be sure to run `pod lib lint ZdataBinding.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZdataBinding'
  s.version          = '0.1.0'
  s.summary          = 'The library for two way data binding & add listener for hear values change.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The library for two way data binding & add listener for hear values change. just install the lib & enjoye that.
                       DESC

  s.homepage         = 'https://github.com/AbbasTorabi/ZdataBinding'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AbbasTorabi' => 'abbas.programing@gmail.com' }
  s.source           = { :git => 'https://github.com/AbbasTorabi/ZdataBinding.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZdataBinding/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZdataBinding' => ['ZdataBinding/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
