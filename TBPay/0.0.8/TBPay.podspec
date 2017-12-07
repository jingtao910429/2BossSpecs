#
#  Be sure to run `pod spec lint RxWebClient.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "TBPay"
  s.version      = "0.0.8"
  s.summary      = "PayManager支付管理"

  s.description  = <<-DESC
                   兔博士Pay封装
                   DESC

  s.homepage     = "https://github.com/jingtao910429/TBPay"
  s.license      = "MIT"

  s.author             = "http://gw.2boss.cn"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/jingtao910429/TBPay.git"}

  s.frameworks          = "CoreMotion", 
  "SystemConfiguration", 
  "CoreTelephony", 
  "QuartzCore", 
  "CoreText", 
  "CoreGraphics", 
  "CFNetwork", 
  "UIKit", 
  "Foundation"
  s.libraries           = "z", "c++", "c", "sqlite3"

  
  # s.resource = 'TBPay/AliPay/AlipaySDK.bundle'
  s.source_files  = "TBPay/Pay/*"
  #s.dependency 'WechatOpenSDK'
  # s.vendored_libraries = 'TBPay/WechatOpenSDK/OpenSDK1.8.0/libWeChatSDK.a'
  # s.static_framework = true
  # s.prefix_header_contents = '#import "FMTFoundation.h"'

  s.subspec 'WeChatPay' do |subspec|
    subspec.source_files = "TBPay/WechatOpenSDK/OpenSDK1.8.0/*.{h}"
    subspec.vendored_libraries = 'TBPay/WechatOpenSDK/OpenSDK1.8.0/*{.a}'
    subspec.framework = 'CoreMotion'
    
  end

  s.subspec 'AliPay' do |subspec|
    subspec.vendored_frameworks = 'TBPay/AliPay/AlipaySDK.framework'
    subspec.resource = 'TBPay/AliPay/AlipaySDK.bundle'
    subspec.source_files = 'TBPay/AliPay/AlipaySDK.framework/Headers/*.{h}'
    subspec.public_header_files = 'TBPay/AliPay/AlipaySDK.framework/Headers/*.{h}'
    subspec.framework = 'CoreMotion'
    
  end
  

  s.requires_arc = true

end
