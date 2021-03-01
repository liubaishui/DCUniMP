#
# Be sure to run `pod lib lint DCUniMP.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#


Pod::Spec.new do |s|
  s.name             = 'DCUniMP'
  s.version          = '3.1.3'
  s.summary          = 'A short description of DCUniMP.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/qingShi-dot/DCUniMP'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shunqiziran199202' => '2405632981@qq.com' }
  s.source           = { :git => 'https://github.com/qingShi-dot/DCUniMP.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.requires_arc  = true
  s.static_framework = true
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.frameworks = "JavaScriptCore", "CoreMedia", "MediaPlayer", "AVFoundation", "AVKit", "GLKit", "OpenGLES", "CoreText", "QuartzCore", "CoreGraphics", "QuickLook", "CoreTelephony", "AssetsLibrary", "CoreLocation", "AddressBook"
  s.libraries = "c++"

  s.default_subspecs = "Core"
  s.ios.deployment_target = '9.0'

  s.subspec "Core" do |ss|
    ss.subspec "Headers" do |sss|
      sss.source_files = "DCUniMP/Classes/Core/Headers/*.h"

      sss.subspec "weexHeader" do |ssss|
        ssss.source_files = "DCUniMP/Classes/Core/Headers/weexHeader/*.h"
      end
    end

    ss.subspec "Libs" do |sss|
      sss.vendored_library = "DCUniMP/Classes/Core/Libs/*.a"
      sss.vendored_frameworks = "DCUniMP/Classes/Core/Libs/*.framework"
    end
  end

  s.resources = ["DCUniMP/Classes/Core/Resources/*.js", "DCUniMP/Classes/Core/Resources/*.ttf", "DCUniMP/Classes/Core/Resources/*.bundle"]
  
  # s.resource_bundles = {
  #   'DCUniMP' => ['DCUniMP/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
