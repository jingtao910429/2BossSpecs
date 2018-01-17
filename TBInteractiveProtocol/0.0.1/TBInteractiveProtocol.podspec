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

  s.frameworks = "Foundation", 
  "WebKit", 
  "UIKit", 
  "CoreLocation"

  s.requires_arc = true

  s.subspec 'Core' do |subspec|
    subspec.source_files = "Source/TBInteractiveProtocol/*.{swift}"
    subspec.dependency 'TBInteractiveProtocol/Helper'
    subspec.dependency 'TBInteractiveProtocol/ProgressView'
    subspec.dependency 'TBInteractiveProtocol/Handlers/EvaluateJSHandlers'
  end

  s.subspec 'Handlers' do |subspec|

    subspec.subspec 'Core' do |subspecCore|
      subspecCore.source_files = "Source/TBInteractiveProtocol/Handlers/*.{swift}"
    end

    subspec.subspec 'RegisterHandlers' do |subspecSubRegister|
      subspecSubRegister.source_files = "Source/TBInteractiveProtocol/Handlers/RegisterHandlers/*.{swift}"
      subspecSubRegister.dependency 'TBInteractiveProtocol/Handlers/Core'
    end

    subspec.subspec 'CallHandlers' do |subspecSubCall|
      subspecSubCall.source_files = "Source/TBInteractiveProtocol/Handlers/CallHandlers/*.{swift}"
      subspecSubCall.dependency 'TBInteractiveProtocol/Handlers/Core'
    end

    subspec.subspec 'EvaluateJSHandlers' do |subspecSubEvaluate|
      subspecSubEvaluate.source_files = "Source/TBInteractiveProtocol/Handlers/EvaluateJSHandlers/*.{swift}"
      subspecSubEvaluate.dependency 'TBInteractiveProtocol/Handlers/Core'
    end
  end

  s.subspec 'Helper' do |subspec|
    subspec.source_files = "Source/TBInteractiveProtocol/Helper/*.{swift}"
  end

  s.subspec 'ProgressView' do |subspec|
    subspec.source_files = "Source/TBInteractiveProtocol/ProgressView/*.{swift}"
  end

  s.subspec 'WeakBusiness' do |subspec|

    subspec.dependency 'TBInteractiveProtocol/Handlers'
    subspec.dependency 'TBInteractiveProtocol/Core'
    subspec.dependency 'TBInteractiveProtocol/Helper'

    subspec.subspec 'Models' do |subspecSubModel|
      subspecSubModel.source_files = "Source/TBInteractiveProtocol/WeakBusiness/Models/*.{swift}"
    end

    subspec.subspec 'Plugins' do |subspecSubPlugin|

      subspecSubPlugin.subspec 'RegisterHandlerPlugins' do |subspecSubRegister|
        subspecSubRegister.source_files = "Source/TBInteractiveProtocol/WeakBusiness/Plugins/RegisterHandlerPlugins/*.{swift}"
        subspecSubRegister.dependency 'TBInteractiveProtocol/WeakBusiness/Models'
      end

      subspecSubPlugin.subspec 'CallHandlerPlugins' do |subspecSubCall|
        subspecSubCall.source_files = "Source/TBInteractiveProtocol/WeakBusiness/Plugins/CallHandlerPlugins/*.{swift}"
        subspecSubCall.dependency 'TBInteractiveProtocol/WeakBusiness/Plugins/RegisterHandlerPlugins'
      end
    end

  end

  s.dependency "TBWebViewJavascriptBridge"
  s.dependency "NJKWebViewProgress"
  s.dependency "ObjectMapper", '~> 2.0.0'

end