Pod::Spec.new do |s|

  s.name         = "TBInteractiveProtocol"
  s.version      = "0.0.1"
  s.summary      = "TBInteractiveProtocol"
  s.description  = <<-DESC
                   兔博士H5交互协议相关封装
                   DESC

  s.homepage     = "https://github.com/jingtao910429/TBInteractiveProtocol.git"
  s.license      = "MIT"

  s.author       = "http://ta.2boss.cn"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/jingtao910429/TBInteractiveProtocol.git"}
  s.source_files  = "Source/TBInteractiveProtocol/*.{swift}", 
  "Source/TBInteractiveProtocol/**/*.{swift}"


  s.frameworks = "Foundation", 
  "WebKit", 
  "UIKit", 
  "CoreLocation"

  s.requires_arc = true

  s.dependency "TBWebViewJavascriptBridge"
  s.dependency "NJKWebViewProgress"
  s.dependency "ObjectMapper", '~> 2.0.0'

end