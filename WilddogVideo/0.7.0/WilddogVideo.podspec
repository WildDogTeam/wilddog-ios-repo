Pod::Spec.new do |s|
  s.name                = "WilddogVideo"
  s.version             = "0.7.0"
  s.summary             = "Wilddog video module for iOS"

  s.description         = <<-DESC
                          The video module lets you make realtime media communication.
                          DESC

  s.homepage            = "https://www.wilddog.com/"
  s.license             = "Copyright"
  s.author              = "Wilddog Team"
  s.platform            = :ios, "8.0"

  s.source              = { :http => "https://cdn.wilddog.com/sdk/ios/internal/WilddogVideo/WilddogVideo-0.7.0.zip" }
  s.vendored_frameworks = "WilddogVideo.framework"

  s.frameworks          = "AudioToolbox", "VideoToolbox", "AVFoundation", "GLKit", "CoreMedia", "UIKit", "Foundation","MetalKit"
  s.library             = "c++"
  s.xcconfig            = { "OTHER_LDFLAGS" => "-ObjC" }

  s.dependency "WilddogCore", ">= 2.0.8"
  s.dependency "WilddogSync", ">= 2.3.0"
  s.dependency "WilddogAuth", ">= 2.0.2"
end
