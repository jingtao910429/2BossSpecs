
Pod::Spec.new do |s|

  s.name         = "TBRongCloudIMManager"
  s.version      = "0.0.7"
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

  s.source_files = "Source/*.{h,m}"

  s.dependency 'RongCloudIMLibrary', '0.1.1'

  s.static_framework = true
  
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

  s.requires_arc = true

end
