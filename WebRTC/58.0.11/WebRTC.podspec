Pod::Spec.new do |s|
  s.name               = "WebRTC"
  s.version            = "58.0.11"
  s.summary            = "WebRTC 集成。"
  s.description        = "WebRTC 的集成版本。供内部开发使用。"
  s.homepage           = "https://www.wilddog.com/"
  s.license            = { :type => "Copyright", :text => "Copyright 2016 Wilddog" }
  s.author             = "Wilddog Team"
  
  s.platform           = :ios, "8.0"
  s.source             = { :http => "https://cdn.wilddog.com/sdk/ios/internal/webrtc-58/WebRTC.framework-58.0.11.zip" }

  
  s.platform     = :ios, "8.0"

  s.vendored_frameworks = "WebRTC.framework"

  s.frameworks         = "AudioToolbox", "VideoToolbox", "AVFoundation", "GLKit", "CoreMedia", "UIKit", "Foundation"
  s.libraries          = "c++"
  s.xcconfig           = { "OTHER_LDFLAGS" => "-ObjC" }
end