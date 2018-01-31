Pod::Spec.new do |s|

  s.name         = "TBInteractiveProtocol"
  s.version      = "0.1.4"
  s.summary      = "TBInteractiveProtocol"
  s.description  = <<-DESC
                   兔博士H5交互协议相关封装
                   DESC

  s.homepage     = "https://github.com/jingtao910429/TBInteractiveProtocol.git"
  s.license      = "MIT"

  s.author       = "http://ta.2boss.cn"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/jingtao910429/TBInteractiveProtocol.git"}

  s.frameworks = "Foundation", 
  "WebKit", 
  "UIKit", 
  "CoreLocation"

  s.requires_arc = true

  s.subspec 'Core' do |subspec|
    subspec.source_files = "Source/TBInteractiveProtocol/*.{swift}", "Source/TBInteractiveProtocol/Helper/*.{swift}", "Source/TBInteractiveProtocol/ProgressView/*.{swift}"
    subspec.dependency 'TBInteractiveProtocol/Handlers'
  end

  s.subspec 'Handlers' do |subspec|
    subspec.source_files = "Source/TBInteractiveProtocol/Handlers/*.{swift}", "Source/TBInteractiveProtocol/Handlers/**/*.{swift}"
  end

  s.subspec 'WeakBusiness' do |subspec|

    subspec.dependency 'TBInteractiveProtocol/Handlers'
    subspec.dependency 'TBInteractiveProtocol/Core'

    subspec.subspec 'Models' do |subspecSubModel|
      subspecSubModel.source_files = "Source/TBInteractiveProtocol/WeakBusiness/Models/*.{swift}"
    end

    subspec.subspec 'Plugins' do |subspecSubPlugin|
      subspecSubPlugin.source_files = "Source/TBInteractiveProtocol/WeakBusiness/Plugins/**/*.{swift}"
      subspecSubPlugin.dependency 'TBInteractiveProtocol/WeakBusiness/Models'
    end

  end

  s.dependency "TBWebViewJavascriptBridge"
  s.dependency "NJKWebViewProgress"
  s.dependency "ObjectMapper", '~> 2.0.0'

end