
Pod::Spec.new do |s|

  s.name         = "RongCloudIMLibrary"
  s.version      = "0.0.4"
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
  s.public_header_files = "RongCloudIM/RongIMLib.framework/Headers/*.{h}", "RongCloudIM/RongIMKit.framework/Headers/*.{h}"
  s.source_files  = "Source/*.{h}","RongCloudIM/RongIMLib.framework/Headers/*.{h}", "RongCloudIM/RongIMKit.framework/Headers/*.{h}"
  s.frameworks          = "Foundation"
  s.vendored_frameworks = ['RongCloudIM/RongIMLib.framework', 'RongCloudIM/RongIMKit.framework']
  s.resource_bundles = {'Resources' => 'RongCloudIM/RongCloud.bundle'}
  s.resources = "RongCloudIM/*.plist", "RongCloudIM/*.strings"
  s.vendored_libraries = 'RongCloudIM/libopencore-amrnb.a'
  s.libraries = "sqlite3.0", "c++", "xml2", "stdc++", "z"
  s.user_target_xcconfig =  {'OTHER_LINKER_FLAGS' => ['-lObjC','-all_load']}
  s.pod_target_xcconfig = {'OTHER_LDFLAGS' => ['-lObjC','-all_load']}
  s.requires_arc = true
end
