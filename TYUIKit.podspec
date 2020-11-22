#
# Be sure to run `pod lib lint TYUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'TYUIKit'
    s.version          = '0.1.5'
    s.summary          = '私有的TYUIKit'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC 
   这是私有的UIKit工具如阿福看你自己看你当初v你时刻在你空间在v款家迪你离开.
    DESC
    
    s.homepage         = 'https://github.com/TonyTong1993/TYUIKit.git'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'TonyTong1993' => 'tongwanhua1993@163.com' }
    if ENV["IS_SOURCE"] == 'true'
        puts "访问了源码"
        s.source           = { :git => 'https://github.com/TonyTong1993/TYUIKit.git', :tag => s.version.to_s }
    else
        puts "访问了binary"
        s.source           = { :git => 'https://github.com/TonyTong1993/TYUIKit.git', :tag => s.version.to_s }
    end
   
    s.ios.deployment_target = '8.0'
    if ENV["IS_SOURCE"] == 'true'
        puts "访问了源码"
        s.source_files = 'TYUIKit/Classes/**/*' 
    else
        puts "访问了binary"
        s.source_files = 'Pod/Product/include/TYUIKitBinary/*'
        s.public_header_files = 'Pod/Product/include/TYUIKitBinary/*.h'
        s.ios.vendored_libraries = 'Pod/Product/lib/libTYUIKit.a'
    end
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
