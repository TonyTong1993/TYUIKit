#
# Be sure to run `pod lib lint TYUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'TYUIKit'
    s.version          = '0.1.4'
    s.summary          = 'A short description of TYUIKit.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/TonyTong1993/TYUIKit'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'TonyTong1993' => 'tongwanhua1993@163.com' }
    s.source           = { :git => 'https://github.com/TonyTong1993/TYUIKit.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '8.0'
    
    s.source_files = 'TYUIKit/Classes/**/*','Example/TYUIKit/Controllers/*.{h,m}','Example/TYUIKit/Views/*.{h,m}'
        
    s.subspec 'UIExtensions' do |es|
        es.source_files = 'TYUIKit/Classes/UIExtensions/*.*'
        #    es.dependency 'RestKit/CoreData'
    end
    
    s.subspec 'UIWidgets' do |es|
        es.source_files = 'TYUIKit/Classes/UIWidgets/*.*'
        #    es.dependency 'RestKit/CoreData'
    end
    
    s.ios.resource_bundle = {
        'TYUIKit' => ['TYUIKit/Assets/images/*.png','TYUIKit/Assets/xibs/*.xib','Example/TYUIKit/TYUIKit.xcassets','Example/TYUIKit/Views/*.xib','Example/TYUIKit/Controllers/*.xib']
    }
    
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
