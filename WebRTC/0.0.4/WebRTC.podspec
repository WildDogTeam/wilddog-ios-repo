Pod::Spec.new do |s|
  s.name               = "WebRTC"
  s.version            = "0.0.4"
  s.summary            = "WebRTC 集成。"
  s.description        = "WebRTC 的集成版本。供内部开发使用。"
  s.homepage           = "https://www.wilddog.com/"
  s.license            = { :type => "Copyright", :text => "Copyright 2016 Wilddog" }
  s.author             = "Wilddog Team"
  
  s.platform           = :ios, "8.0"
  s.source             = { :http => "https://cdn.wilddog.com/sdk/ios/internal/0.0.3/WebRTC.framework-0.0.3.zip" }

  s.preserve_paths = 'WebRTC.framework/WebRTC'

  s.prepare_command = 'touch Empty.m && cp WebRTC.framework/WebRTC libWebRTC.a && cp WebRTC.framework/Headers/* .'

  s.source_files = 'Empty.m', '*.h'
  s.public_header_files = '*.h'

  s.vendored_libraries = 'libWebRTC.a' 

  s.frameworks         = "AudioToolbox", "VideoToolbox", "AVFoundation", "GLKit", "CoreMedia", "UIKit", "Foundation"
  s.libraries          = "c++"
  s.xcconfig           = { "OTHER_LDFLAGS" => "-ObjC" }
end