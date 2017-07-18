Pod::Spec.new do |s|
  s.name               = "TUSDK"
  s.version            = "0.0.1"
  s.summary            = "TUSDK 集成。"
  s.description        = "TUSDK 的集成版本。供内部开发使用。"
  s.homepage           = "https://www.wilddog.com/"
  s.license            = {:type => "Copyright", :text => "Copyright 2016 Wilddog" }
  s.author             = "Wilddog Team"
  
  s.platform           = :ios, "8.0"
  s.source             = { :http => "https://cdn.wilddog.com/sdk/ios/internal/TUSDK/0.0.1/TUSDK-0.0.1.zip" }
  
  s.vendored_frameworks = 'TUSDK/*.framework'


  s.frameworks         = "AudioToolbox", "VideoToolbox", "AVFoundation", "GLKit", "CoreMedia", "UIKit", "Foundation"
  s.libraries          = "c++"
  s.xcconfig           = { "OTHER_LDFLAGS" => "-ObjC" }
  s.dependency "GPUImage"
end
