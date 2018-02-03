
Pod::Spec.new do |s|

  s.name         = "RongCloudIMLibrary"
  s.version      = "0.1.2"
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

  s.libraries = "sqlite3.0", "c++", "xml2", "stdc++", "z"

  s.subspec 'RongIMLib' do |subspec|
    
    subspec.source_files = "RongCloudIM/RongIMLib.framework/Headers/*.h"
    subspec.vendored_frameworks = ["RongCloudIM/RongIMLib.framework"]
    subspec.vendored_libraries = "RongCloudIM/libopencore-amrnb.a"
    subspec.resources = [
      "RongCloudIM/RCConfig.plist"
    ]
  end

  s.subspec 'RongIMKit' do |subspec|
    
    subspec.source_files = "RongCloudIM/RongIMKit.framework/Headers/*.h"
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
    subspec.dependency 'RongCloudIMLibrary/RongIMLib'
  end

  # s.prepare_command     = <<-EOF
  # mkdir RongCloudIM/RongIMKit.framework/Modules
  # touch RongCloudIM/RongIMKit.framework/Modules/module.modulemap
  # cat <<-EOF > RongCloudIM/RongIMKit.framework/Modules/module.modulemap
  # framework module RongIMKit {
  #    header "RongIMKit.h"
  #    header "RCIM.h"
  #    header "RCConversationListViewController.h"
  #    header "RCPublicServiceListViewController.h"
  #    header "RCConversationViewController.h"
  #    header "RCImagePreviewController.h"
  #    header "RCImageSlideController.h"
  #    header "RCLocationPickerViewController.h"
  #    header "RCLocationViewController.h"
  #    header "RCPublicServiceChatViewController.h"
  #    header "RCPublicServiceSearchViewController.h"
  #    header "RCConversationBaseCell.h"
  #    header "RCConversationCell.h"
  #    header "RCConversationModel.h"
  #    header "RCFileMessageCell.h"
  #    header "RCImageMessageCell.h"
  #    header "RCImageMessageProgressView.h"
  #    header "RCLocationMessageCell.h"
  #    header "RCMessageBaseCell.h"
  #    header "RCThemeDefine.h"
  #    header "RCBaseViewController.h"
  #    header "RCChatSessionInputBarControl.h"
  #    header "RCEmojiBoardView.h"
  #    header "RCMessageModel.h"
  #    header "RCPluginBoardView.h"
  #    header "RCEmoticonTabSource.h"
  #    header "RCTextView.h"
  #    header "RCMessageCellDelegate.h"
  #    header "RCMessageCellNotificationModel.h"
  #    header "RCTipLabel.h"
  #    header "RCAttributedLabel.h"
  #    header "RCConversationDetailContentView.h"
  #    header "RCConversationStatusView.h"
  #    header "RCMessageBubbleTipView.h"
  #    header "RCMessageCell.h"
  #    header "RCContentView.h"
  #    header "RCRichContentMessageCell.h"
  #    header "RCTextMessageCell.h"
  #    header "RCTipMessageCell.h"
  #    header "RCUnknownMessageCell.h"
  #    header "RCVoiceMessageCell.h"
  #    header "RCKitUtility.h"
  #    header "RCContentView.h"
  #    header "RCPublicServiceProfileViewController.h"
  #    header "RCSettingViewController.h"
  #    header "RongIMKitExtensionModule.h"
  #    header "RCConversationSettingTableViewHeader.h"
  #    header "RCConversationSettingTableViewController.h"
  #    header "RCExtensionMessageCellInfo.h"
  #    header "RCExtensionModule.h"
  #    header "RCExtensionPluginItemInfo.h"
  #    export *
  #    link "c++"
  #    link "c++abi"
  #    link "sqlite3"
  #    link "stdc++"
  #    link "xml2"
  #    link "z"
  # }
  # \EOF
  
  # mkdir RongCloudIM/RongIMLib.framework/Modules
  # touch RongCloudIM/RongIMLib.framework/Modules/module.modulemap
  # cat <<-EOF > RongCloudIM/RongIMLib.framework/Modules/module.modulemap
  # framework module RongIMLib {
  #    header "RongIMLib.h"
  #    header "RCIMClient.h"
  #    header "RCStatusDefine.h"
  #    header "RCChatRoomInfo.h"
  #    header "RCConversation.h"
  #    header "RCDiscussion.h"
  #    header "RCGroup.h"
  #    header "RCUserTypingStatus.h"
  #    header "RCCSLeaveMessage.h"
  #    header "RCCSPullLeaveMessage.h"
  #    header "RCCommandMessage.h"
  #    header "RCCommandNotificationMessage.h"
  #    header "RCContactNotificationMessage.h"
  #    header "RCDiscussionNotificationMessage.h"
  #    header "RCGroupNotificationMessage.h"
  #    header "RCImageMessage.h"
  #    header "RCInformationNotificationMessage.h"
  #    header "RCLocationMessage.h"
  #    header "RCMessage.h"
  #    header "RCMessageContent.h"
  #    header "RCMentionedInfo.h"
  #    header "RCUserInfo.h"
  #    header "RCCustomerServiceConfig.h"
  #    header "RCCustomerServiceGroupItem.h"
  #    header "RCCustomerServiceInfo.h"
  #    header "RCPublicServiceProfile.h"
  #    header "RCPushProfile.h"
  #    header "RCSearchConversationResult.h"
  #    header "RCUploadImageStatusListener.h"
  #    header "RCUploadMediaStatusListener.h"
  #    header "RCUserInfo.h"
  #    header "RCUserOnlineStatusInfo.h"
  #    header "RCWatchKitStatusDelegate.h"
  #    header "RCCSLeaveMessageItem.h"
  #    header "RCReadReceiptInfo.h"
  #    header "RCPublicServiceMenu.h"
  #    header "RCPublicServiceMenuItem.h"
  #    header "RCMessageContentView.h"
  #    header "RCProfileNotificationMessage.h"
  #    header "RCPublicServiceCommandMessage.h"
  #    header "RCPublicServiceMultiRichContentMessage.h"
  #    header "RCPublicServiceRichContentMessage.h"
  #    header "RCRealTimeLocationEndMessage.h"
  #    header "RCRealTimeLocationStartMessage.h"
  #    header "RCRecallNotificationMessage.h"
  #    header "RCRichContentMessage.h"
  #    header "RCTextMessage.h"
  #    header "RCUnknownMessage.h"
  #    header "RCVoiceMessage.h"
  #    header "RCAMRDataConverter.h"
  #    header "RCTSMutableDictionary.h"
  #    header "RCUtilities.h"
  #    header "interf_dec.h"
  #    header "interf_enc.h"
  #    header "RCEvaluateItem.h"
  #    header "RCChatRoomMemberInfo.h"
  #    header "RCRealTimeLocationManager.h"
  #    header "RCStatusMessage.h"
  #    header "RCFileMessage.h"
  #    header "RCFileUtility.h"
  #    header "RCRichContentItem.h"
  #    export *
  #    link "c++"
  #    link "c++abi"
  #    link "sqlite3"
  #    link "stdc++"
  #    link "xml2"
  #    link "z"
  # }
  # \EOF
  # EOF

  
  s.user_target_xcconfig =  {'OTHER_LINKER_FLAGS' => ['-lObjC','-all_load']}
  s.pod_target_xcconfig = {'OTHER_LDFLAGS' => ['-lObjC','-all_load']}

  s.requires_arc = true
end
