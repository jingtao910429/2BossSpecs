
Pod::Spec.new do |s|

  s.name         = "RongCloudIMLibrary"
  s.version      = "0.0.7"
  s.summary      = "RongCloudIM‘s upper pack of RongCloudIMLibrary."
  s.description  = <<-DESC
                   兔博士团队融云消息中心封装，基于Object-C，链式调用方式、对外接口
                   http://www.rongcloud.cn
                   DESC

  s.homepage     = "https://github.com/jingtao910429/RongCloudIMLibrary.git"
  s.license      = "MIT"
  s.author       = "http://ta.2boss.cn"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/jingtao910429/RongCloudIMLibrary.git"}

  s.frameworks   = 'CoreLocation', 'CoreTelephony', 'AVFoundation', 'Contacts', 'AddressBook', 'AudioToolbox', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics'
  s.source_files = "RongCloudIM/RongIMLib.framework/Headers/RongIMLib.h", "RongCloudIM/RongIMKit.framework/Headers/RongIMKit.h"
  s.vendored_frameworks = ["RongCloudIM/RongIMLib.framework", "RongCloudIM/RongIMKit.framework"]
  s.vendored_libraries = "RongCloudIM/libopencore-amrnb.a"
  s.resources = [
    "RongCloudIM/*.{plist}",
    "RongCloudIM/*.{lproj}",
    "RongCloudIM/RongCloud.bundle"
  ]
  s.libraries = "sqlite3.0", "c++", "xml2", "stdc++", "z"
  s.xcconfig  = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/RongCloudIMLibrary/**\"" }
  s.user_target_xcconfig =  {'OTHER_LINKER_FLAGS' => ['-lObjC','-all_load']}
  s.pod_target_xcconfig = {'OTHER_LDFLAGS' => ['-lObjC','-all_load']}

  s.requires_arc = true
end
