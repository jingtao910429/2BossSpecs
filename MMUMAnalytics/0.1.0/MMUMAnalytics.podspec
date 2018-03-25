
Pod::Spec.new do |s|

  s.name         = "MMUMAnalytics"
  s.version      = "0.1.0"
  s.summary      = "上海燃点记忆大师UM framework化"

  s.description  = <<-DESC
                   上海燃点记忆大师UM framework化
                   DESC

  s.homepage     = "https://gitee.com/jydsapp/MMBaseComponents.git"

  s.license      = "MIT"

  s.author       = "https://gitee.com/jingtao910429"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/jingtao910429/MMUMAnalytics.git"}

  s.frameworks = "CoreTelephony", "SystemConfiguration"
  s.libraries = "sqlite3.0", "z"

  s.subspec 'UMCAnalytics' do |subspec|
    subspec.source_files = "UMCAnalytics/UMAnalytics.framework/Versions/A/Headers/*.h"
    subspec.vendored_frameworks = ["UMCAnalytics/UMAnalytics.framework"]
    subspec.frameworks = "CoreTelephony", "SystemConfiguration"
    subspec.dependency 'MMUMAnalytics/UMCCommon'
  end

  s.subspec 'UMCCommon' do |subspec|
    subspec.source_files = "UMCCommon/UMCommon.framework/Versions/A/Headers/*.h"
    subspec.vendored_frameworks = ["UMCCommon/UMCommon.framework"]
  end

  # s.prepare_command     = <<-EOF
  # mkdir UMCCommon/UMCommon.framework/Modules
  # touch UMCCommon/UMCommon.framework/Modules/module.modulemap
  # cat <<-EOF > UMCCommon/UMCommon.framework/Modules/module.modulemap
  # framework module UMCommon {
  #    header "UMCommon.h"
  #    header "UMConfigure.h"
  #    export *
  #    link "sqlite3"
  #    link "z"
  # }
  # \EOF

  # s.prepare_command     = <<-EOF
  # mkdir UMCAnalytics/UMAnalytics.framework/Modules
  # touch UMCAnalytics/UMAnalytics.framework/Modules/module.modulemap
  # cat <<-EOF > UMCAnalytics/UMAnalytics.framework/Modules/module.modulemap
  # framework module UMAnalytics {
  #    header "MobClick.h"
  #    header "DplusMobClick.h"
  #    header "MobClickGameAnalytics.h"
  #    export *
  #    link "sqlite3"
  #    link "z"
  # }
  # \EOF
  # EOF

  s.user_target_xcconfig =  {'OTHER_LINKER_FLAGS' => ['-lObjC','-all_load']}
  s.pod_target_xcconfig = {'OTHER_LDFLAGS' => ['-lObjC','-all_load']}

  s.requires_arc = true

end
