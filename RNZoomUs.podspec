require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNZoomUs"
  s.version      = package["version"]
  s.summary      = "RNZoomUs"
  s.description  = <<-DESC
                  React Native integration for Zoom SDK
                   DESC
  s.homepage     = "https://github.com/SeniorityLtd/react-native-zoom-us#ios-fix"
  s.license      = "MIT"
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/SeniorityLtd/react-native-zoom-us/ios-fix" }
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true

  s.static_framework = true
  s.dependency "React"
  s.dependency "ZoomSDK" , '5.5.12511.0421'
end

