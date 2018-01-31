
Pod::Spec.new do |s|

  s.name         = "TBRongCloudIMManager"
  s.version      = "0.0.4"
  s.summary      = "RongCloudIM‘s upper pack of TBRongCloudIMManager."

  s.description  = <<-DESC
                   兔博士团队融云消息中心封装，基于Object-C对外接口
                   http://www.rongcloud.cn
                   DESC

  s.homepage     = "https://github.com/jingtao910429/RongCloudIMManager.git"
  s.license      = "MIT"
  s.author       = "http://ta.2boss.cn"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/jingtao910429/RongCloudIMManager.git"}

  s.libraries = "sqlite3.0", "c++", "xml2", "stdc++", "z"

  s.subspec 'RongIMLib' do |subspec|
    
    subspec.source_files = "RongCloudIM/RongIMLib.framework/Headers/*.h"
    subspec.public_header_files = "RongCloudIM/RongIMLib.framework/Headers/RongIMLib.h"
    subspec.vendored_frameworks = ["RongCloudIM/RongIMLib.framework"]
    subspec.vendored_libraries = "RongCloudIM/libopencore-amrnb.a"
    subspec.resources = [
      "RongCloudIM/RCConfig.plist"
    ]
  end

  s.subspec 'RongIMKit' do |subspec|
    
    subspec.source_files = "RongCloudIM/RongIMKit.framework/Headers/*.h"
    subspec.public_header_files = "RongCloudIM/RongIMKit.framework/Headers/RongIMKit.h"
    subspec.vendored_frameworks = ["RongCloudIM/RongIMKit.framework"]
    subspec.resources = [
      "RongCloudIM/Emoji.plist",
      "RongCloudIM/*.{lproj}",
      "RongCloudIM/RongCloud.bundle"
    ]
    subspec.frameworks = 
        "AssetsLibrary",
        "MapKit",
        "ImageIO",
        "CoreLocation",
        "SystemConfiguration",
        "QuartzCore",
        "OpenGLES",
        "CoreVideo",
        "CoreTelephony",
        "CoreMedia",
        "CoreAudio",
        "CFNetwork",
        "AudioToolbox",
        "AVFoundation",
        "UIKit",
        "CoreGraphics",
        "SafariServices"
    subspec.dependency 'TBRongCloudIMManager/RongIMLib'
  end

  # s.subspec 'Core' do |subspec|
  #   subspec.dependency 'TBRongCloudIMManager/RongIMKit'
  #   subspec.source_files = "Source/*.{h,m}"
  #   subspec.xcconfig  = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/TBRongCloudIMManager/RongIMKit/**\"" }
  # end
  

  
  s.user_target_xcconfig =  {'OTHER_LINKER_FLAGS' => ['-lObjC','-all_load']}
  s.pod_target_xcconfig = {'OTHER_LDFLAGS' => ['-lObjC','-all_load']}

  s.requires_arc = true
end
