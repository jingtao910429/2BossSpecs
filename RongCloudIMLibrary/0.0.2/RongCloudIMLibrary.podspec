#
#  Be sure to run `pod spec lint RxWebClient.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "RongCloudIMLibrary"
  s.version      = "0.0.2"
  s.summary      = "RongCloudIM‘s upper pack of RongCloudIMLibrary."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                   兔博士团队融云消息中心封装，基于Object-C，链式调用方式、对外接口
                   http://www.rongcloud.cn
                   DESC

  s.homepage     = "https://github.com/jingtao910429/RongCloudIMLibrary.git"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = "http://gw.2boss.cn"
  # Or just: s.author    = "2Boss"
  # s.authors            = { "2Boss" => "" }
  # s.social_media_url   = "http://twitter.com/2Boss"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  # , :tag => "#{s.version}" 
  s.source       = { :git => "https://github.com/jingtao910429/RongCloudIMLibrary.git"}


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #
  # , "RongCloudIM/RongIMLib/*.{h}", "RongCloudIM/RongIMKit/*.{h}"
  s.source_files  = "Source/*.{h}"
  # s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.prefix_header_contents = "#import <RongIMLib/RongIMLib>"
  # s.public_header_files = "Source/RongCloudIM/RongIMLib/headers/*.{h}", "Source/RongCloudIM/RongIMKit/headers/*.{h}"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  s.frameworks = 'Foundation'
  s.vendored_frameworks = ['RongCloudIM/RongIMLib.framework', 'RongCloudIM/RongIMKit.framework']
  s.resource_bundles = {'Resources' => 'RongCloudIM/RongCloud.bundle'}
  s.resources = "RongCloudIM/*.plist", "RongCloudIM/*.lproj"
  s.vendored_libraries = 'RongCloudIM/libopencore-amrnb.a' #表示依赖第三方/自己的静态库（比如libWeChatSDK.a）

  # s.library   = "iconv"
  s.libraries = "sqlite3.0", "c++", "xml2", "stdc++", "z"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true
  s.xcconfig       = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Headers/Public/RongCloudIMLibrary" }
  # s.xcconfig         = { 'OTHER_LDFLAGS' => '-all_load'}

  # s.xcconfig = { 'SWIFT_OBJC_BRIDGING_HEADER' => 'RongCloudIMManager-umbrella.h' }
  # s.dependency 'RongCloudIM/IMKit', '~>2.8.14'
  # s.dependency 'Moya'
  # s.dependency 'RxSwift'
  # s.dependency 'ObjectMapper'
end
