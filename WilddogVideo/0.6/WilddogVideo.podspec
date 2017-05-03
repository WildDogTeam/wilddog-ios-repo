Pod::Spec.new do |s|
  s.name                = "WilddogVideo"
  s.version             = "0.6"
  s.summary             = "Wilddog video module for iOS"

  s.description         = <<-DESC
                          The video module lets you make realtime media communication.
                          DESC

  s.homepage            = "https://www.wilddog.com/"
  s.license            = { :type => "Copyright", :text => "Copyright 2016 Wilddog" }
  s.author              = "Wilddog Team"
  s.platform            = :ios, "8.0"

  s.source              = { :http => "https://cdn.wilddog.com/sdk/ios/internal/WilddogVideo-pre.zip" }
  s.vendored_frameworks = "WilddogVideo.framework"

  s.frameworks          = "AudioToolbox", "VideoToolbox", "AVFoundation", "GLKit", "CoreMedia", "UIKit", "Foundation"
  s.library             = "c++"
  s.xcconfig            = { "OTHER_LDFLAGS" => "-ObjC" }

  s.dependency "WilddogCore", ">= 2.0.8"
  s.dependency "WilddogSync", ">= 2.3.0"
  s.dependency "WilddogAuth", ">= 2.0.2"
  s.dependency "WebRTC","0.0.3"
end
